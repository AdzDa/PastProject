%{
 Finite Element Method Project/ Octave/ .m file
 Case Study    : Constant Strain Triangle (CST)
 Programme Code: 
 Section       : 
 Team Member   : ADZ
                 BEH 
                 OOI 
%}
%%________________________________________________________________________________________________
%%Function Declaration
global no_Nodes no_Elements no_Nodes_per_Element no_DOF no_DOF_per_Element x;
global nodal_coordination nodal_connectivity D_matrix nodal_DOF Point_Load;
global B_Matrix Force_global A K_global k_element Assemble_K_global;
global x_displacement y_displacement Displacement element_displacement nodal_displacement cAxis;
%global element_DOF;
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________
%%                                        INPUT(Data) 
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________
%%Value Declaration

%Material & Plane Properties
E=(207)*(10^9);  %%E=Young's Modulus(Pa)
v=0.3;  %%v=Poisson's Ratio
t=0.005;  %%t=thickness(m)
%%--------------------------------------------------

%Boundary Conditions(BC1)
no_Nodes=14;  %%no_Nodes=number of nodes
no_Elements=15;  %%no_Elements=number of elements
no_Nodes_per_Element=3;  %%no_Nodes_per_Element
no_DOF=2;  %%no_DOF=number of Degree of Freedom(DOF) per Node
no_DOF_per_Element=(no_DOF)*(no_Nodes_per_Element);  %%no_DOF_per_Element=number of DOF per Element
%%--------------------------------------------------

%%Coordinate
nodal_coordination=zeros(no_Nodes,2);   %%return/initialize matrix nodal_coordinate as  0
nodal_coordination=[       0,       0;  %%Node1(x-coordinate,y-coordinate)=N1
                         0.2,       0;  %%N2
                      0.0667,       0;  %%N3
                     0.13333,       0;  %%N4
                         0.2,  0.0987;  %%N5
                         0.2,  0.0494;  %%N6
                        0.18,    0.12;  %%N7
                           0,    0.12;  %%N8
                        0.12,    0.12;  %%N9
                        0.06,    0.12;  %%N10
                     1.8e-16,    0.06;  %%N11
                      0.0933,    0.06;  %%N12
                     0.15458,  0.0691;  %%N13
                      0.0467,   0.06];  %%N14
%%--------------------------------------------------

%%Nodal Connectivity
nodal_connectivity=zeros(no_Elements,3);  %%return/initialize matrix nodal_connectivity as  0
nodal_connectivity=[13,  4, 12;   %%E1=Element1(node1,node2,node3)
                    13,  9,  7;   %%E2
                    13,  6,  5;   %%E3
                    13,  5,  7;   %%E4
                     3, 12,  4;   %%E5
                    13,  6,  4;   %%E6
                     2,  6,  4;   %%E7
                    13, 12,  9;   %%E8
                    10, 12,  9;   %%E9
                    14, 12,  3;   %%E10
                    14, 12, 10;   %%E11
                    14,  3,  1;   %%E12
                    14, 11,  1;   %%E13
                    14, 11,  8;   %%E14
                    14, 10,  8];  %%E15
%%--------------------------------------------------

%Boundary Conditions(BC2)
%BC2 for Displacement,Q=0
nodal_DOF=ones(no_Nodes,no_DOF);  %%return/initialize matrix nodal_DOF as 1 

                       nodal_DOF(1,2)=0;  %%node1--->Roller support(move x-direction)
nodal_DOF(2,1)=0;      nodal_DOF(2,2)=0;  %%node2--->Fixed support
                       nodal_DOF(3,2)=0;  %%node3--->Roller support(move x-direction)
                       nodal_DOF(4,2)=0;  %%node4--->Roller support(move x-direction)
nodal_DOF(5,1)=0;                         %%node5--->Roller support(move y-direction)
nodal_DOF(6,1)=0;                         %%node6--->Roller support(move y-direction)
   
%Counting the free degrees of freedom
x=0;
 for i=1:no_Nodes    %%i=1:14
    for j=1:no_DOF      %%j=1:2
       if nodal_DOF(i,j) ~= 0
          x=x+1;
          nodal_DOF(i,j)=x;
       end
    end
 end 
%%--------------------------------------------------

%Applied Force
Point_Load=zeros(no_Nodes,2);
Point_Load(1,1)=-100;     Point_Load(1,2)=0;   %%Force=100N at (-ve) x-direction on Node1 
%%--------------------------------------------------

%Ansys value to be compared
  %displacement(m) at node 1, 5 & 7
  qx_1=-0.00000033198;        qy_1=0;                 %%N1
  qx_5=0;                     qy_5=-3.556e-005;       %%N5
  qx_7=-0.000000017962;       qy_7=-4.1653e-005;      %%N7
%%---------------- 

  %Stress(Pa)
  Sigma_x1=297620;      %Sigma_y1=;    Tao_xy1=;      %%N1
  Sigma_x5=167850;      %Sigma_y5=;    Tao_xy5=;      %%N5
  Sigma_x7=131980;      %Sigma_y7=;    Tao_xy7=;      %%N7
%%---------------- 
  
  %Strain
  Epsilon_x1=0.0000012751;       %Epsilon_y1=;      Tao_xy1=;      %%N1
  Epsilon_x5=0.00000080889;      %Epsilon_y5=;      Tao_xy5=;      %%N5
  Epsilon_x7=0.00000065413;      %Epsilon_y7=;      Tao_xy7=;      %%N7
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________
%%                            PROCESSING INPUT(Equation involved)
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________

%Material Matrix=[D] for plane stress condition
D_matrix=(E/(1.-(v^2)))*[1  v              0.;
                         v  1              0.;
                         0. 0. ((0.5)*(1-v))];
%%--------------------------------------------------

%Global Force vector
Force_global=zeros(x,1);
  for i=1:no_Nodes    %%i=1:14
      if nodal_DOF(i,1) ~= 0      %%x-direction(e.g: q1,q3,q5,..-->odd) ==>not equal to(~=)
      Force_global(nodal_DOF(i,1))=Point_Load(i,1);       %%Assigning applied force if applicable
      end
          if nodal_DOF(i,2) ~= 0;        %%y-direction(e.g: q2,q4,q6,..-->even) 
          Force_global(nodal_DOF(i,2))=Point_Load(i,2);         %%Assigning applied force if applicable
          end
  end
%%--------------------------------------------------

function [B_Matrix,g,A]=Solve_B(i)        %%local function to solve [B]
  global nodal_coordination nodal_connectivity A B_Matrix no_Nodes_per_Element nodal_DOF no_DOF
  no_Nodes_per_Element=3;
  no_DOF=2;
  
  %Assigning Xij and Yij wrt to nodal coordinate & connectivity
  x1 =nodal_coordination(nodal_connectivity(i,1),1);       y1 =nodal_coordination(nodal_connectivity(i,1),2);
  x2 =nodal_coordination(nodal_connectivity(i,2),1);       y2 =nodal_coordination(nodal_connectivity(i,2),2);
  x3 =nodal_coordination(nodal_connectivity(i,3),1);       y3 =nodal_coordination(nodal_connectivity(i,3),2);
  %%----------------

  c1=x1-x3;
  c2=x2-x3;
  d1=y1-y3;
  d2=y2-y3; 
      J=[c1 d1 ;     %%[J]=Jacobian Matrix
         c2 d2];
      DJ=det(J);   
  A=(0.5)*(abs(DJ));    %%Area of Element=[A], det[J]=determinant of [J] matrix, abs()=modulus or (+ve) value   
  %%----------------

  %Strain Displacement Matrix=[B]=(1/det[J])*[3x6];
    %[A]=(1/2)*(abs(det[J])); ---->(1/det[J])=1/(2*A);
    a1=(x3-x2)/(2*A);  %%x32 
    a2=(x1-x3)/(2*A);  %%x13
    a3=(x2-x1)/(2*A);  %%x21
    b1=(y2-y3)/(2*A);  %%y23
    b2=(y3-y1)/(2*A);  %%y23
    b3=(y1-y2)/(2*A);  %%y12
  B_Matrix=[b1   0  b2   0  b3   0 ;
             0  a1   0  a2   0  a3 ;
            a1  b1  a2  b2  a3  b3]; 
  %%----------------
          
  l=0;
     for k=1:no_Nodes_per_Element    %%k=1:3
        for j=1:no_DOF    %%j=1:2
            l=l+1;
            g(l)=nodal_DOF(nodal_connectivity(i,k),j);      %%g=steering vector
        end
     end
     
end       %%for function [B_Matrix,g,A]=Solve_B(i)
%%--------------------------------------------------

function [K_global]=Assemble_K_global(K_global, k_element, g)     %%local function to assembel Global Stiffness Matrix
 %global no_DOF_per_Element K_global k_element
 no_DOF=2;
 no_Nodes_per_Element=3;
 no_DOF_per_Element=(no_DOF)*(no_Nodes_per_Element);
 
 for i=1:no_DOF_per_Element      %%i=1:6
     if g(i) ~= 0
        for j=1:no_DOF_per_Element     %%j=1:6
            if g(j) ~= 0
            K_global(g(i),g(j))=K_global(g(i),g(j))+k_element(i,j);
            end
        end
     end
 end
 
end       %%for function [K_global]=Assemble_K_global(K_global, k_element, g)
 
%%----------------

%Global stiffness matrix
K_global=zeros(x, x);     %%Set Global stiffness matrix starting to zero

for i=1:no_Elements       %%i=1:15
  [B_Matrix,g,A]=Solve_B(i);      %%retrieving function [B_Matrix,g,A]=Solve_B(i)
  B_Matrix_Tranpose=B_Matrix.';     %%Tranpose matrix(A.')
  k_element=(t*A)*B_Matrix_Tranpose*D_matrix*B_Matrix;     %%Element stiffness matrix=k_element    
  K_global=Assemble_K_global(K_global, k_element, g);      %%Global stiffness matrix=K_global
end
%%--------------------------------------------------

%%F=kx ---> {F}=[K]{Q} ---> {Q}=(inv([K]))*F ==> inv()=inverse function
%Solving unknown displacements,Qij
Displacement=K_global\Force_global;     %%X=A\B X=inv(A)*B ---> Left matrix division(\)

nodal_displacement=zeros(no_Nodes,2);
  for i=1:no_Nodes      %%i=1:14
      if nodal_DOF(i,1) == 0 
         x_displacement=0.; 
      else
         x_displacement=Displacement(nodal_DOF(i,1));          %%x-direction(e.g: q1,q3,q5,..-->odd)
      end
          if nodal_DOF(i,2) == 0 
             y_displacement= 0.; 
          else
             y_displacement=Displacement(nodal_DOF(i,2));         %%y-direction(e.g: q2,q4,q6,..-->even) 
          end
  nodal_displacement(i,:)=[x_displacement   y_displacement];      %%1x2
  end

% Retrieve the x_coord and y_disp of the nodes located on the neutral axis
k=0;
for i=1:no_Nodes;      %%i=1:14
    if nodal_coordination(i,2)== 0.
       k=k+1;
       x_coord(k)=nodal_coordination(i,1);
       vertical_disp(k)=nodal_displacement(i,2);
    end
end

for i=1:no_Elements       %%i=1:15
    [B_Matrix,g,A]=Solve_B(i); 
    element_displacement=zeros(no_DOF_per_Element,1);        %%Set element_displacement(q) starting to zero
        for m=1:no_DOF_per_Element     %%m=1:6
            if g(m)==0 
               element_displacement(m)=0.;
            else 
               element_displacement(m)=Displacement(g(m)); % Retrieve element displacement
            end
        end
Strain=B_Matrix*element_displacement;      %%Strains=epsilon=[B]{q}
Eps(i,:)=Strain;      %%Storing/save strains for all elements wrt to its array  --->1x3
  %disp(Eps(i,:));
Stress=D_matrix*Strain;       %%Stress=Sigma=[D]{epsilon}
Sigma(i,:)=Stress;      %%Storing/save stress for all elements wrt to its array  --->1x3
  %disp(Sigma(i,:));
end
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________
%%                                  OUTPUT(Display Results)
%%________________________________________________________________________________________________
%%________________________________________________________________________________________________

disp('___________________________________________________________');
disp('         RESULTS(Constant Strain Triangle-CST)             ');
disp('___________________________________________________________');

disp('Nodal Displacement,Qij');
fprintf('\n');
disp('|x-disp,qi(m)|y-disp,qj(m) |');
disp('|(i=odd; 1,3,|(j=even; 2,4,|');
disp('|   5,..13)  |     6,..14) |');
disp('----------------------------');
for i=1:no_Nodes	    %%i=1:14
format shortE
%fprintf('%d   %f\n',i,nodal_displacement(i,:));
disp(nodal_displacement(i,:));    
end
disp('---------------------------------------');
fprintf('\n');

disp('Ansys Results Comparison');
format shortE
fprintf('qx1= %d',qx_1); fprintf('\n');
fprintf('qx5= %d',qx_5); fprintf('\n');
fprintf('qx7= %d',qx_7); fprintf('\n');

%Percentage differance(%)=(|A-B|/((A+B)/2))*(100)
Percentage_Difference_qx1=(abs((qx_1-Displacement(nodal_DOF(1,1)))/((qx_1+Displacement(nodal_DOF(1,1)))/2)))*(100);    %%N1 
fprintf('Percentage Difference of qx1= %.2f', Percentage_Difference_qx1);
fprintf('\n');

fprintf('Percentage Difference of qx5= 0.00');      %N5
fprintf('\n');
  
Percentage_Difference_qx7=(abs((qx_7-Displacement(nodal_DOF(7,1)))/((qx_7+Displacement(nodal_DOF(7,1)))/2)))*(100);    %%N7 
fprintf('Percentage Difference of qx7= %.2f', Percentage_Difference_qx7);
fprintf('\n');
disp('---------------------------------------------------------------------------');
%%--------------------------------------------------

fprintf('\n');
disp('Stress(Pa)');
fprintf('\n');
disp('|   Sigma_x   |  Sigma_y   |    Tao_xy   |');
disp('--------------------------------------------');
for i=1:no_Elements	    %%i=1:15
format shortE
disp(Sigma(i,:));    
end
disp('---------------------------------------');
fprintf('\n');

disp('Ansys Results Comparison');
format shortE
fprintf('Sigma_x1= %d',Sigma_x1); fprintf('\n');
fprintf('Sigma_x5= %d',Sigma_x5); fprintf('\n');
fprintf('Sigma_x7= %d',Sigma_x7); fprintf('\n');

Percentage_Difference_Sigmax1=(abs((Sigma_x1-Sigma(1,1))/(Sigma_x1+Sigma(1,1))/2))*(100);    %%N1 
fprintf('Percentage Difference of Sigma_x1= %.2f', Percentage_Difference_Sigmax1);
fprintf('\n');

Percentage_Difference_Sigmax5=(abs((Sigma_x1-Sigma(5,1))/(Sigma_x1+Sigma(5,1))/2))*(100);    %%N5 
fprintf('Percentage Difference of Sigma_x5= %.2f', Percentage_Difference_Sigmax5);
fprintf('\n');
  
Percentage_Difference_Sigmax7=(abs((Sigma_x1-Sigma(7,1))/(Sigma_x1+Sigma(7,1))/2))*(100);    %%N7 
fprintf('Percentage Difference of Sigma_x7= %.2f', Percentage_Difference_Sigmax7);
fprintf('\n');
disp('---------------------------------------------------------------------------');
%%--------------------------------------------------

fprintf('\n');
disp('Strain');
fprintf('\n');
disp('|    Eps_x    |   Eps_y    |    Gamma_xy   |');
disp('----------------------------------------------');
for i=1:no_Elements	    %%i=1:15
format shortE
disp(Eps(i,:));    
end
disp('---------------------------------------');
fprintf('\n');

disp('Ansys Results Comparison');
format shortE
fprintf('Strain_x1= %d',Epsilon_x1); fprintf('\n');
fprintf('Strain_x5= %d',Epsilon_x5); fprintf('\n');
fprintf('Strain_x7= %d',Epsilon_x7); fprintf('\n');

Percentage_Difference_Strainx1=(abs((Epsilon_x1-Eps(1,1))/(Epsilon_x1+Eps(1,1))/2))*(100);    %%N1
fprintf('Percentage Difference of Strain_x1= %.2f',Percentage_Difference_Strainx1);
fprintf('\n');

Percentage_Difference_Strainx5=(abs((Epsilon_x5-Eps(5,1))/(Epsilon_x5+Eps(5,1))/2))*(100);    %%N5
fprintf('Percentage Difference of Strain_x5= %.2f',Percentage_Difference_Strainx5);
fprintf('\n');
  
Percentage_Difference_Strainx7=(abs((Epsilon_x7-Eps(7,1))/(Epsilon_x1+Eps(7,1))/2))*(100);    %%N7
fprintf('Percentage Difference of Strain_x1= %.2f',Percentage_Difference_Strainx7);
fprintf('\n');
disp('---------------------------------------------------------------------------');

%%--------------------------------------------------




