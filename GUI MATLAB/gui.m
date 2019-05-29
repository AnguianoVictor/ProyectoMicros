function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 28-May-2019 11:05:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%% Los modos se inicializan apagados. 
set(handles.Regulable,'Value',0);
set(handles.Tiempo,'Value',0);

set(handles.ValorSegundos,'Visible','Off');
set(handles.OnTiempo,'Visible','Off');
set(handles.ValorTiempo,'Visible','Off');

set(handles.ValorRegulacion,'Visible','Off');
set(handles.OnRegulable,'Visible','Off');
set(handles.ApagarReg,'Visible','Off');
set(handles.text2,'Visible','Off');

% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ValorRegulacion_Callback(hObject, eventdata, handles)
% hObject    handle to ValorRegulacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ValorRegulacion as text
%        str2double(get(hObject,'String')) returns contents of ValorRegulacion as a double


% --- Executes during object creation, after setting all properties.
function ValorRegulacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ValorRegulacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OnRegulable.
function OnRegulable_Callback(hObject, eventdata, handles)
% hObject    handle to OnRegulable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valorReg = str2num(get(handles.ValorRegulacion,'String'));
checkNum = isnumeric(valorReg) && isscalar(valorReg);    % Verificacion numerica
envioContinuo = true;

if checkNum == 1                                        % Si es un numero... 
    if valorReg > 100 || valorReg < 0                        % Verificacion entre 0 y 100
        valorReg = 0;
        set(handles.ValorRegulacion,'String','0');
        errordlg('Ingrese un valor entre 0 y 100.','Error');
    else
    set(handles.ApagarReg,'Visible','On');
    set(hObject,'Visible','Off');
    Regla3 = round(valorReg*1023/100);                  % Regla de correspondecia 100-1023
    toPIC = dec2hex(Regla3);
    muestras=1000;
    contador=1;
    delete(instrfindall);
    s = serial('COM13','BaudRate',2400);
    try
        fopen(s);
        set(handles.statusConexion,'String','Transmitiendo');
        set(handles.statusConexion,'BackgroundColor','green');
        axes(handles.axes1);
        while (envioContinuo == true)
            statusStop = get(handles.ApagarReg,'Value');
                if statusStop == 0
                    ylim([-1 6]);
                    xlim auto
                    fprintf(s,'%s',toPIC);
                    out=fscanf(s,'%d');
                    Tension(contador)=out(1)*5/1023;
                    Datos(contador,1)=out(1);
                    Datos(contador,2)=Tension(contador);
                    plot(Tension,'r');
                    drawnow
                    contador=contador+1;
                else
                    envioContinuo = false;
                end
        end
    catch err
        delete(instrfindall);
        errordlg(getReport(err,'basic','hyperlinks','off'))
    end
    end
else
    errordlg('Ingrese un valor numerico.','Error');
    set(handles.ValorRegulacion,'String','0');
end


function ValorSegundos_Callback(hObject, eventdata, handles)
% hObject    handle to ValorSegundos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ValorSegundos as text
%        str2double(get(hObject,'String')) returns contents of ValorSegundos as a double


% --- Executes during object creation, after setting all properties.
function ValorSegundos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ValorSegundos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OnTiempo.
function OnTiempo_Callback(hObject, eventdata, handles)
% hObject    handle to OnTiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valorSeg = str2num(get(handles.ValorSegundos,'String'))
flagVerify = isnumeric(valorSeg) && isscalar(valorSeg)
envioContinuo = true;
contador = 0;
if flagVerify == 1                                          % Verificacion que sea numero
    if valorSeg < 0                                         % Verificacion que sea mayor a 0
        valorSeg = 0;
        set(handles.ValorSegundos,'String','0');
        errordlg('Ingrese un valor positivo.','Error');
    else                                                    % Es mayor a 0, entonces...
        delete(instrfindall);
        s = serial('COM13','BaudRate',2400);
        try
            fopen(s);                                       % Se realiza la conexion
            set(handles.statusConexion,'String','Transmitiendo');
            set(handles.statusConexion,'BackgroundColor','green');
            axes(handles.axes1);
            while (contador == valorSeg)
                ylim([-1 6]);
                xlim auto
                fprintf(s,'%s',toPIC);
                out=fscanf(s,'%d');
                Tension(contador)=out(1)*5/1023;
                Datos(contador,1)=out(1);
                Datos(contador,2)=Tension(contador);
                plot(Tension,'r');
                drawnow
                pause(1);
                contador=contador+1;
            end
        catch err
            delete(instrfindall);
            errordlg(getReport(err,'basic','hyperlinks','off'))
        end
    end
else
    errordlg('Ingrese un valor numerico.','Error');
    set(handles.ValorSegundos,'String','0');
end

% --- Executes on button press in Regulable.
function Regulable_Callback(hObject, eventdata, handles)
% hObject    handle to Regulable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Regulable
%% Seleccion de modo de operacion
statusRegulable = get(hObject,'Value');
if (statusRegulable == 1)               %Se selecciono el modo A? 
    %% Se oculta el modo B
    set(handles.ValorSegundos,'Visible','Off');
    set(handles.OnTiempo,'Visible','Off');
    set(handles.ValorTiempo,'Visible','Off');
    %% Se muestra el modo A
    set(handles.ValorRegulacion,'Visible','On');
    set(handles.OnRegulable,'Visible','On');
    set(handles.ApagarReg,'Visible','Off');
    set(handles.text2,'Visible','On');
else
    %%Se muestra el modo B
    set(handles.ValorSegundos,'Visible','On');
    set(handles.OnTiempo,'Visible','On');
    set(handles.ValorTiempo,'Visible','On');
    %% Se oculta el modo A
    set(handles.ValorRegulacion,'Visible','Off');
    set(handles.OnRegulable,'Visible','Off');
    set(handles.ApagarReg,'Visible','Off');
    set(handles.text2,'Visible','Off');
end


% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(instrfindall);                                                     % Cierra la comuniacion serial
% Cambia el indicador de transmision
set(handles.statusConexion,'String','Desconectado');
set(handles.statusConexion,'BackgroundColor','red');

statusStop = get(hObject,'Value');
statusRegulable = get(hObject,'Value');
if (statusRegulable == 1)               %Se selecciono el modo A? 
    %% Se muestra el modo B
    set(handles.ValorSegundos,'Visible','On');
    set(handles.OnTiempo,'Visible','On');
    set(handles.ValorTiempo,'Visible','On');
    %% Se muestra el modo A
    set(handles.ValorRegulacion,'Visible','On');
    set(handles.OnRegulable,'Visible','On');
    set(handles.ApagarReg,'Visible','On');
    set(handles.text2,'Visible','On');
    %% Reinicia los valores a cero de los selectores
    set(handles.Regulable,'Value',0);
    set(handles.Tiempo,'Value',0);
else
    
end
% --- Executes on button press in Tiempo.
function Tiempo_Callback(hObject, eventdata, handles)
% hObject    handle to Tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Tiempo

%% Seleccion de modo de operacion
statusTiempo = get(hObject,'Value');  
if (statusTiempo == 0)               %Se selecciono el modo A? 
    %% Se muestra el modo B
    set(handles.ValorSegundos,'Visible','Off');
    set(handles.OnTiempo,'Visible','Off');
    set(handles.ValorTiempo,'Visible','Off');
    %% Se oculta el modo A
    set(handles.ValorRegulacion,'Visible','On');
    set(handles.OnRegulable,'Visible','On');
    set(handles.ApagarReg,'Visible','On');
    set(handles.text2,'Visible','On');
else
    %%Se muestra el modo B
    set(handles.ValorSegundos,'Visible','On');
    set(handles.OnTiempo,'Visible','On');
    set(handles.ValorTiempo,'Visible','On');
    %% Se oculta el modo A
    set(handles.ValorRegulacion,'Visible','Off');
    set(handles.OnRegulable,'Visible','Off');
    set(handles.ApagarReg,'Visible','Off');
    set(handles.text2,'Visible','Off');
end


% --- Executes on button press in ApagarReg.
function ApagarReg_Callback(hObject, eventdata, handles)
% hObject    handle to ApagarReg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ApagarReg,'Visible','Off');
set(handles.OnRegulable,'Visible','On');
set(handles.statusConexion,'String','Desconectado');
set(handles.statusConexion,'BackgroundColor','red');
delete(instrfindall)
% --- Executes during object creation, after setting all properties.
function OnRegulable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OnRegulable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in statusConect.
function statusConect_Callback(hObject, eventdata, handles)
% hObject    handle to statusConect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of statusConect
