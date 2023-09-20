function varargout = SolEqGUI_2(varargin)
% SOLEQGUI_2 MATLAB code for SolEqGUI_2.fig
%      SOLEQGUI_2, by itself, creates a new SOLEQGUI_2 or raises the existing
%      singleton*.
%
%      H = SOLEQGUI_2 returns the handle to a new SOLEQGUI_2 or the handle to
%      the existing singleton*.
%
%      SOLEQGUI_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOLEQGUI_2.MASS with the given input arguments.
%
%      SOLEQGUI_2('Property','Value',...) creates a new SOLEQGUI_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SolEqGUI_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SolEqGUI_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SolEqGUI_2

% Last Modified by GUIDE v2.5 27-Dec-2019 00:28:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SolEqGUI_2_OpeningFcn, ...
                   'gui_OutputFcn',  @SolEqGUI_2_OutputFcn, ...
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


% --- Executes just before SolEqGUI_2 is made visible.
function SolEqGUI_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SolEqGUI_2 (see VARARGIN)

% Choose default command line output for SolEqGUI_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SolEqGUI_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SolEqGUI_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function g_Callback(hObject, eventdata, handles)
% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g as text
%        str2double(get(hObject,'String')) returns contents of g as a double


% --- Executes during object creation, after setting all properties.
function g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e as text
%        str2double(get(hObject,'String')) returns contents of e as a double


% --- Executes during object creation, after setting all properties.
function e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as text
%        str2double(get(hObject,'String')) returns contents of a1 as a double


% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1 as text
%        str2double(get(hObject,'String')) returns contents of c1 as a double


% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_Callback(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l as text
%        str2double(get(hObject,'String')) returns contents of l as a double


% --- Executes during object creation, after setting all properties.
function l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function j_Callback(hObject, eventdata, handles)
% hObject    handle to j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of j as text
%        str2double(get(hObject,'String')) returns contents of j as a double


% --- Executes during object creation, after setting all properties.
function j_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i_Callback(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i as text
%        str2double(get(hObject,'String')) returns contents of i as a double


% --- Executes during object creation, after setting all properties.
function i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r1_Callback(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1 as text
%        str2double(get(hObject,'String')) returns contents of r1 as a double


% --- Executes during object creation, after setting all properties.
function r1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function s_Callback(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of s as text
%        str2double(get(hObject,'String')) returns contents of s as a double


% --- Executes during object creation, after setting all properties.
function s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m1_Callback(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m1 as text
%        str2double(get(hObject,'String')) returns contents of m1 as a double


% --- Executes during object creation, after setting all properties.
function m1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function o_Callback(hObject, eventdata, handles)
% hObject    handle to o (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of o as text
%        str2double(get(hObject,'String')) returns contents of o as a double


% --- Executes during object creation, after setting all properties.
function o_CreateFcn(hObject, eventdata, handles)
% hObject    handle to o (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_Callback(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p as text
%        str2double(get(hObject,'String')) returns contents of p as a double


% --- Executes during object creation, after setting all properties.
function p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function width_Callback(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of width as text
%        str2double(get(hObject,'String')) returns contents of width as a double


% --- Executes during object creation, after setting all properties.
function width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mass_Callback(hObject, eventdata, handles)
% hObject    handle to mass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mass as text
%        str2double(get(hObject,'String')) returns contents of mass as a double


% --- Executes during object creation, after setting all properties.
function mass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.a1,'string','');
   set(handles.b1,'string','');
   set(handles.c1,'string','');
   set(handles.d,'string','');
        set(handles.e,'string','');
        set(handles.f,'string','');
                set(handles.g,'string','');
                set(handles.h,'string','');
   set(handles.i,'string','');
   set(handles.j,'string','');
    set(handles.k,'string','');
    set(handles.l,'string','');
            set(handles.m1,'string','');
            %set(handles.n,'string','');
            set(handles.o,'string','');
            %set(handles.p,'string','');
             set(handles.q,'string','');
             %set(handles.r1,'string','');
             set(handles.s,'string','');
             %set(handles.t1,'string','');
             set(handles.u,'string','');
                set(handles.MY,'string','');
                set(handles.FBR,'string','');
                        set(handles.FCT,'string','');
                        set(handles.FCV,'string','');
                        set(handles.PF,'string','');
                        set(handles.BY,'string','');


             
%%__________________________________________________________________________________________________________
% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m=str2double(get(handles.mass,'string'));
x=str2double(get(handles.width,'string'));

%%Constant Value____________________________________________________
NA=0.02605; %%NA=Neutral Axis(m)
I=(3.1946)*(10^(-8)); %%I=Second Moment of Area
G=7.752*(10^(10)); %%G=Modulus of Rigidity(Pa)
v=0.29; %%v=Poisson Ratio
y=0.01235; %%y=Distance from NA to the farthest part/point of the element(m)
t=0.0016; %%t=Thickness(m)
th=2*t; %%th=Total Thickness(m)
g=9.81; %%g=Gravitational Force(m/s^2)
Q=8.42*(10^(-7)); %%Q=y*A
St_Y=(415)*(10^(6)); %%St_Y=Tensile Strength Yield(Pa) 
E=200*(10^(9)); %%E=Young's Modulus(Pa)

W=(m*g)/2; %%W=Weight(N)

%%Moment & Force Equilibrium Equation_______________________________
FA=(W)*(((5*x)/(3))-(2/3)); %%FA=Force_A(N)
FB=(W/0.3)*((0.5)-(x/2)); %%FB=Force_B(N)
a=(0.5)-(x); 
 if x>0.4 && x<=0.5
      b=abs((FA)/(W/x));
      c=a+b;
      %%Shear Force Diagram(SFD)
      K_=((-W)/x)*((0.3)-c);
      V=K_; %%V=Shear Force(N)
      %%Bending Moment Diagram(BMD)
      L_=(FA)*(a);
      M_=((FA/2)*(b))+(L_);
      N_=((K_/2)*((0.3)-(c)))+(M_);
      M_Max=N_; %%M_Max=Maximum Bending Moment
 elseif x>0 && x<=0.4
         %%Shear Force Diagram(SFD)
         K_=(FA)-(((W)/x)*((0.3)-a));
         Z=(K_)+(FB);
         V=Z; %%V=Shear Force(N)
         %%Bending Moment Diagram(BMD)
         L_=(FA)*(a);
         M_=((K_+FA)/(2))*(0.3-a);
         N_=(L_)+(M_);
         M_Max=N_; %%M_Max=Maximum Bending Moment
 else
      disp('INVALID Input!!');
 end
    
%%Stress Components_________________________________________________
St_x=abs((M_Max*y)/(I)); %%St=Stress/Sigma(Pa)
St_y=0;
T_Sh=(-V*Q)/(I*th); %%T_Sh=Tranverse Shear
St_1=((St_x+St_y)/2)+(sqrt((((St_x-St_y)/2)^2)+((T_Sh)^2)));
St_2=((St_x+St_y)/2)-(sqrt((((St_x-St_y)/2)^2)+((T_Sh)^2)));

%%Strain Components__________________________________________________
Sh_Str=(1/G)*(T_Sh); %%Sh_Str=Shear Strain
Str_x=(1/E)*((St_x)-(v*St_y)); %%Str=Strain
Str_y=(1/E)*((St_y)-(v*St_x)); 
Str_1=((Str_x+Str_y)/2)+(sqrt((((Str_x-Str_y)/2)^2)+((Sh_Str/2)^2)));
Str_2=((Str_x+Str_y)/2)-(sqrt((((Str_x-Str_y)/2)^2)+((Sh_Str/2)^2)));

%%Failure Criterion__________________________________________________
   %%Von Mises Theory
   St_Y_=sqrt((St_1^2)+(St_2^2)-(St_1*St_2)); %%St_Y=Yield Stress
   St_allow=St_Y_;
        %%Tresca Theory
        St_Y1_=abs(St_1-St_2);
        St_allow_1=St_Y1_;
            %%Safety Factor
            SF=St_Y/St_allow;
            SF1=St_Y/St_allow_1;
                                  
%%Buckling_________________________________________________________
L=0.39; %%L=Unsupported Length(m)
r=0;
    Kxx=1; %%Both Pinned Ends
    I_s_xx=(1.707)*(10^(-8)); %%Moment of Inertia for support beam(m^4)
    P_Cr_xx=((pi^2)*(E*I_s_xx))/((Kxx*L)^2); %%P_Cr=Critical Force(N)
    St_Cr_xx=((pi^2)*E)/(((Kxx*L)/r)^2); %%St_Cr=Critical Stress(Pa)
        Kyy=0.5; %%Both Fixed Ends
        I_s_yy=(1.092)*(10^(-10));    
        P_Cr_yy=((pi^2)*(E*I_s_yy))/((Kyy*L)^2); 
        St_Cr_yy=((pi^2)*E)/(((Kyy*L)/r)^2);
Le_xx=Kxx*L; %%Le=Effective Length causing buckling
Le_yy=Kyy*L; 
    ESR_xx=(Kxx*L)/(r); %%ESR=Effective Slenderness Ratio
    ESR_yy=(Kyy*L)/(r); 
FB_R=(FB)/(sind(219.87)); %%Resultant FB(N)
    
%%Castigliano's Second Theorem________________________________________
 dv=(1/(E*I))*((((W)*((0.5)^(3)))/3)-((W*x/4)*((0.5)^(2)))-((FB/3)*((0.5)^(3)))+(((0.2)*(FB/2))*((0.5)^(2)))); 
 
%%Elastic-Plastic_____________________________________________________
M_Y=((St_Y)*(I))/(NA); %%Initial Elastic Yielding Moment

%%Ouput_______________________________________________________________
   set(handles.a1,'string',num2str(FA,'%.2f'));
   set(handles.b1,'string',num2str(FB,'%.2f'));
   set(handles.c1,'string',num2str(V,'%.2f'));
   set(handles.d,'string',num2str(M_Max,'%.2f'));
        set(handles.e,'string',num2str(St_1,'%.3e'));
        set(handles.f,'string',num2str(St_2,'%.3e'));
                set(handles.g,'string',num2str(Str_1,'%.3d'));
                set(handles.h,'string',num2str(Str_2,'%.3d'));
   set(handles.i,'string',num2str(St_allow,'%.3e'));
   set(handles.j,'string',num2str(SF,'%.3e'));
    set(handles.k,'string',num2str(St_allow_1,'%.3e'));
    set(handles.l,'string',num2str(SF1,'%.3e'));
            set(handles.m1,'string',num2str(P_Cr_xx,'%5.2f'));
            %set(handles.n,'string',num2str(St_Cr_xx,'%5.2f'));
            set(handles.o,'string',num2str(Le_xx,'%5.2f'));
            %set(handles.p,'string',num2str(ESR_xx,'%5.2f'));
             set(handles.q,'string',num2str(P_Cr_yy,'%5.2f'));
             %set(handles.r1,'string',num2str(St_Cr_yy,'%5.2f'));
             set(handles.s,'string',num2str(Le_yy,'%5.2f'));
             %set(handles.t1,'string',num2str(ESR_yy,'%5.2f'));
             set(handles.u,'string',num2str(dv,'%f')); 
                    set(handles.MY,'string',num2str(M_Y,'%.2f')); 
                    set(handles.FBR,'string',num2str(FB_R,'%.2f')); 
%%Results_______________________________________________________________
%%Failure Criterion______________________________________
if SF<1 && SF1<1
    set(handles.FCT,'string','FAIL');
    set(handles.FCV,'string','FAIL');
elseif SF<1 && SF>1
    set(handles.FCT,'string','FAIL');
elseif SF>1 && SF<1
    set(handles.FCV,'string','FAIL');
else  %%SF>1 && SF1>1
    set(handles.FCT,'string','-');
    set(handles.FCV,'string','-');
end

%%Plasticity_____________________________________________
if abs(M_Max)== abs(M_Y)
    set(handles.PF,'string','-');
elseif abs(M_Max)> abs(M_Y)
    set(handles.PF,'string','FAIL');
else  %%M_Max< M_Y
    set(handles.PF,'string','-');
end

%%Buckling________________________________________________
if (abs(FB_R))== P_Cr_yy
    set(handles.BY,'string','-');
elseif (abs(FB_R))> P_Cr_yy
    set(handles.BY,'string','FAIL');
else  %%(abs(FB_R))<P_Cr_yy
    set(handles.BY,'string','-');
end


% --- Executes on button press in figure.
function figure_Callback(hObject, eventdata, handles)
% hObject    handle to figure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 
% Hint: place code in OpeningFcn to populate axes1



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u_Callback(hObject, eventdata, handles)
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u as text
%        str2double(get(hObject,'String')) returns contents of u as a double


% --- Executes during object creation, after setting all properties.
function u_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function FCV_Callback(hObject, eventdata, handles)
% hObject    handle to FCV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FCV as text
%        str2double(get(hObject,'String')) returns contents of FCV as a double


% --- Executes during object creation, after setting all properties.
function FCV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FCV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FCT_Callback(hObject, eventdata, handles)
% hObject    handle to FCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FCT as text
%        str2double(get(hObject,'String')) returns contents of FCT as a double


% --- Executes during object creation, after setting all properties.
function FCT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FCT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FBR_Callback(hObject, eventdata, handles)
% hObject    handle to FBR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FBR as text
%        str2double(get(hObject,'String')) returns contents of FBR as a double


% --- Executes during object creation, after setting all properties.
function FBR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FBR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48 as text
%        str2double(get(hObject,'String')) returns contents of edit48 as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MY_Callback(hObject, eventdata, handles)
% hObject    handle to MY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MY as text
%        str2double(get(hObject,'String')) returns contents of MY as a double


% --- Executes during object creation, after setting all properties.
function MY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PF_Callback(hObject, eventdata, handles)
% hObject    handle to PF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PF as text
%        str2double(get(hObject,'String')) returns contents of PF as a double


% --- Executes during object creation, after setting all properties.
function PF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BY_Callback(hObject, eventdata, handles)
% hObject    handle to BY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BY as text
%        str2double(get(hObject,'String')) returns contents of BY as a double


% --- Executes during object creation, after setting all properties.
function BY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
