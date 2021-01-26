%%--------------------------
%TUBES Pengolahan Sistem Digital membuat GUI Equalizer
%MATLAB Programming 
%Oleh       : Maulana Akbar Dwijaya (1103174087) 
%             Ibrahim Ikhsan Aditia	 (1103174077)
%             Ja’far Razzaq	 (1103174058) 
%Kelompok	: 11
%--------------------------
function varargout = cek(varargin)
% CEK MATLAB code for cek.fig
%      CEK, by itself, creates a new CEK or raises the existing
%      singleton*.
%
%      H = CEK returns the handle to a new CEK or the handle to
%      the existing singleton*.
%
%      CEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CEK.M with the given input arguments.
%
%      CEK('Property','Value',...) creates a new CEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cek

% Last Modified by GUIDE v2.5 09-Apr-2020 22:11:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cek_OpeningFcn, ...
                   'gui_OutputFcn',  @cek_OutputFcn, ...
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


% --- Executes just before cek is made visible.
function cek_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cek (see VARARGIN)
global C; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel C
C=ones(1,5); %membuat array dengan ukuran 1 baris 5 kolom ini untuk 5 band
axes(handles.axes1); %Mengatur tag axes1
xlabel('Time'); %memberi nama label x pada tag axes1 
ylabel('Magnitude'); %memberi nama label y pada tag axes1
axes(handles.axes2); %mengatur tag axes2
title('Input Signal'); %memberi judul pada tag axes2
xlabel('Frequency')  %memberi nama label x pada tag axes2
ylabel('Magnitude'); %memberi nama label y pada tag axes2
axes(handles.axes3); %mengatur tag axes3
title('Output Signal'); %memberi judul pada tag axes3
xlabel('Frequency');  %memberi nama label x pada tag axes3
ylabel('Magnitude'); %memberi nama label y pada tag axes3
set(handles.slider1,'min',-20); %mengatur nilai minimum slider1 dengan -20dB
set(handles.slider1,'max',20); %mengatur nilai maximum slider1 dengan 20dB 
set(handles.slider1,'value',1); %mengatur nilai default slider1 dengan 1 dB 
set(handles.slider1,'SliderStep',[0.025,0.05]); %mengatur nilai sliderstep slider1 dengan rentang 0.025-0.05
set(handles.edit3,'string',num2str(1)); %menampilkan nilai slider1 ke tag edit3

set(handles.slider6,'min',-20); %mengatur nilai minimum slider6 dengan -20dB
set(handles.slider6,'max',20); %mengatur nilai maximum slider6 dengan 20dB
set(handles.slider6,'value',1); %mengatur nilai default slider6 dengan 1 dB 
set(handles.slider6,'SliderStep',[0.025,0.05]); %mengatur nilai sliderstep slider6 dengan rentang 0.025-0.05
set(handles.edit4,'string',num2str(1)); %menampilkan nilai slider6 ke tag edit4

set(handles.slider7,'min',-20); %mengatur nilai minimum slider7 dengan -20dB
set(handles.slider7,'max',20); %mengatur nilai maximum slider7 dengan 20dB
set(handles.slider7,'value',1); %mengatur nilai default slider7 dengan 1 dB
set(handles.slider7,'SliderStep',[0.025,0.05]); %mengatur nilai sliderstep slider7 dengan rentang 0.025-0.05
set(handles.edit5,'string',num2str(1)); %menampilkan nilai slider7 ke tag edit5

set(handles.slider8,'min',-20); %mengatur nilai minimum slider8 dengan -20dB
set(handles.slider8,'max',20); %mengatur nilai maximum slider8 dengan 20dB
set(handles.slider8,'value',1); %mengatur nilai default slider8 dengan 1 dB
set(handles.slider8,'SliderStep',[0.025,0.05]); %mengatur nilai sliderstep slider8 dengan rentang 0.025-0.05
set(handles.edit6,'string',num2str(1)); %menampilkan nilai slider8 ke tag edit6 

set(handles.slider9,'min',-20); %mengatur nilai minimum slider9 dengan -20dB
set(handles.slider9,'max',20); %mengatur nilai maximum slider9 dengan 20dB
set(handles.slider9,'value',1); %mengatur nilai default slider9 dengan 1 dB
set(handles.slider9,'SliderStep',[0.025,0.05]); %mengatur nilai sliderstep slider9 dengan rentang 0.025-0.05
set(handles.edit7,'string',num2str(1)); %menampilkan nilai slider9 ke tag edit7 


% Choose default command line output for cek
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cek_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global filename; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel filename
global y2; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel y2
global y3; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel y3
global y4; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel y4
global y5; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel y5
global y6; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel y6
global Fs; %seluruh fungsi dalam satu m file dapat mengakses nilai variabel Fs
global X;  %seluruh fungsi dalam satu m file dapat mengakses nilai variabel X
[filename, pathname] = uigetfile({'*.wav';'*.*'},'File Selector'); %fungsi ini digunakan untuk menginput file audio
set(handles.edit9,'string',filename); %tag edit9 menampilkan nama file
[X,Fs]=audioread(filename); %Membaca audio yg diinput
h2=fir1(100,250/Fs,'low'); %pembuatan LPF pada rentang <250Hz dengan mencari nilai koefisiennya menggunakan perintah fir1 dengan orde 100
h3=fir1(100,[250/Fs 500/Fs],'bandpass');%pembuatan BPF pada rentang 250Hz-500Hz dengan mencari nilai koefisiennya menggunakan perintah fir1 dengan orde 100
h4=fir1(100,[500/Fs 2000/Fs],'bandpass'); %pembuatan BPF pada rentang 500Hz-2000Hz dengan mencari nilai koefisiennya menggunakan perintah fir1 dengan orde 100
h5=fir1(100,[2000/Fs 4000/Fs],'bandpass');%pembuatan BPF pada rentang 2000Hz- 4000Hz dengan mencari nilai koefisiennya menggunakan perintah fir1 dengan orde 100
h6=fir1(100,4000/Fs,'high'); %pembuatan HPF pada rentang >4000Hz dengan mencari nilai koefisiennya menggunakan perintah fir1 dengan orde 100
y2=filter(h2,1,X); %memfilter audio dengan koefisien filter h2 (LPF)
y3=filter(h3,1,X); %memfilter audio dengan koefisien filter h3 (BPF)
y4=filter(h4,1,X); %memfilter audio dengan koefisien filter h4 (BPF)
y5=filter(h5,1,X); %memfilter audio dengan koefisien filter h5 (BPF)
y6=filter(h6,1,X); %memfilter audio dengan koefisien filter h5 (HPF)



if isequal([filename,pathname],[0,0])
    return
% Otherwise construct the fullfilename and Check and load the file.
else
    File = fullfile(pathname,filename) 
    handles.play=File
    %guidata(hObject,handles);
end




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
global player;
global y;
global C;
global y2;
global y3;
global y4;
global y5;
global y6;
global X;
[X,Fs]=audioread(filename); %membaca audio yg diinput
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5); %pejumlahan output filter setelah dikali fungsi array(penguatan filter)
player = audioplayer(y,Fs); %variabel player adalah audio yg diinput 
play(player) %play variabel player






% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
pause(player) %pause variabel player




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
resume(player) %resume variabel player



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
stop(player)%stop variabel player



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(1)=get(hObject,'value'); %mengambil nilai untuk array[1] dari slider1
set(handles.edit3,'string',num2str(C(1))); %menampilkan nilai array[1] ke tag edit3



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%gain2=get(hObject,'value');
%set(handles.slider1,'String',num2str(gain2));
% set(handles.slider1,'Min',f(1));
% set(handles.slider1,'Max',f(501));
% set(handles.slider1,'SliderStep',[1/501,10/501]);
% a=get(handles.slider1,'Value');
% set(handles.text1,'string',num2str(a));
% guidata(hObject,handles);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(2)=get(hObject,'value'); %mengambil nilai untuk array[2] dari slider6
set(handles.edit4,'string',num2str(C(2))); %menampilkan nilai array[2] ke tag edit4



% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(3)=get(hObject,'value'); %mengambil nilai untuk array[3] dari slider7
set(handles.edit5,'string',num2str(C(3))); %menampilkan nilai array[3] ke tag edit5


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(4)=get(hObject,'value'); %mengambil nilai untuk array[4] dari slider8
set(handles.edit6,'string',num2str(C(4))); %menampilkan nilai array[4] ke tag edit6


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(5)=get(hObject,'value'); %mengambil nilai untuk array[5] dari slider9
set(handles.edit7,'string',num2str(C(5))); %menampilkan nilai array[5] ke tag edit9


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
global C;
C(1)=str2num(get(hObject,'string'));%mengubah string menjadi number pada array
minn=get(handles.slider1,'min');%meninisialisasikan nilai minimium pada slider1 ke variabel minn
maxx=get(handles.slider1,'max');%meninisialisasikan nilai maximum pada slider1 ke variabel maxx
if(C(1)<minn || C(1)>maxx)
    C(1)=get(handles.slider1,'value');%tag slider1
    set(hObject,'string',num2str(0));%mengubah number menjadi string
else
    set(handles.slider1,'value',C(1)); %ketika tidak sesuai kondisi maka akan menampilkan nilai array
end


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
global C;
C(2)=str2num(get(hObject,'string'));
minn=get(handles.slider6,'min');
maxx=get(handles.slider6,'max');
if(C(2)<minn || C(2)>maxx)
    C(2)=get(handles.slider6,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider6,'value',C(2));
end



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
global C;
C(3)=str2num(get(hObject,'string'));
minn=get(handles.slider7,'min');
maxx=get(handles.slider7,'max');
if(C(3)<minn || C(3)>maxx)
    C(3)=get(handles.slider7,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider7,'value',C(3));
end


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
global C;
C(4)=str2num(get(hObject,'string'));
minn=get(handles.slider8,'min');
maxx=get(handles.slider8,'max');
if(C(4)<minn || C(4)>maxx)
    C(4)=get(handles.slider8,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider8,'value',C(4));
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
global C;
C(5)=str2num(get(hObject,'string'));
minn=get(handles.slider9,'min');
maxx=get(handles.slider9,'max');
if(C(5)<minn || C(5)>maxx)
    C(5)=get(handles.slider9,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider9,'value',C(5));
end


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C;
global y2;
global y3;
global y4;
global y5;
global y6;
global y;
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5);
% if(C(1)||C(2)||C(3)C(4)||C(5)==0
axes(handles.axes1);%mengatur tag axes1
plot(y);%axes1 tempat untuk menampilkan gelombang audio ter-equalizer
xlabel('Time'); %memberi nama label x 
ylabel('Magnitude'); %memberi nama label y 


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
set(hObject,'string',filename);
% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
%global y;
global C;
global y2;
global y3;
global y4;
global y5;
global y6;
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5);
%out=y;
v=get(handles.popupmenu5,'Value');
% if v==1
%   out=0;
if v==2
    out=y2;
elseif v==3
    out=y3;
elseif v==4
    out=y4;
elseif v==5
    out=y5;
elseif v==6
    out=y6;
end



fs= 1000;%sampling rate
t=(0:1/fs:1);%time vector
fc=100;%carrier frequency
sinwav1= sin(2*pi*t);%membentuk gelombang sinus
amwav=ammod(sinwav1,fc,fs);%suppressed-carrier modulation
[X,Fs]=audioread(filename);%membaca audio
nf=44100;%Nyquist frequency
F=fft(y,nf); %transformasi fourier sinyal input
f=Fs/2*linspace(0,1,nf/2+1); %Plot single-sided amplitude spectrum ke axes2.
axes(handles.axes2);
plot(f,abs(F(1:nf/2+1)))
title('Input Signal');
xlabel('Frequency'); 
ylabel('Magnitude');
axis tight;
zoom xon;
Z=fft(out,nf); %transformasi fourier output sesuai dipilih di popmenu
axes(handles.axes3);
plot(f,abs(Z(1:nf/2+1))) %Plot single-sided amplitude spectrum ke axes3.
title('Output Signal');
xlabel('Frequency'); 
ylabel('Magnitude');
axis tight;
zoom xon;

% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run About;


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
