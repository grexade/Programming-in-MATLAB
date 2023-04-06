%%
% Question 1
% This is for performing Polynomials operations

t = [14 0 0 -11 0 9 1];
k = [5 -12 0 20];
% Question 1a).
r = roots(t)

% Question 1b).
product = conv(t,k);
x = -10:0.01:15;
f = polyval(product,x);
plot(x,f), xlabel('x'), ylabel('product')

%%
% Question 3
% This is about Matrix

A = [12,-1,pi,-1;-0.4,15,12,-4.1;17,-3.8,19,10]

% % Question 3a).
new_a= A(:,1)
% 
% % Question 3b).
smallest = min(sum(A))
% 
% % Question 3c).
 new_matrix = A(:,[1 4])
 
%%
% Question 5
% This is about RLC circuit

% Question 5a).
% prompt1 = "Please enter a value for resistance ";
% rest = input(prompt1);
% prompt2 = "Please enter a value for frequency ";
% freq = input(prompt2);
% amplitude = function5a (rest,freq)

amplitude = function5a (0.7,0.5)


% Question 5b).
freq = 70:2:100
% prompt = "Please enter a value for resistance ";
% rest = input(prompt)
rest = 0.6
amplitude = function5a(rest,freq)

%f = polyval(amplitude,freq);
% If variables to be plotted are not polynomials, then ignore 'polyval'
plot(amplitude,freq), xlabel('freq'), ylabel('amplitude')

%%
% Question 7
% This program is for calculating BMI

%..........................
% I have commented my inputs code so I can publish 
% prompt1 = "Please enter a value for your weight(lb) ";
% prompt2 = "Please enter a value for your height(in) ";
% W = input(prompt1);
% H = input(prompt2);
W = 190
H = 71

calc = 703 * (W./H^2);
BMI = round(calc,1);

if BMI < 18.5;
    m =sprintf('Your BMI value is %d which classifies you as Underweight.',BMI);
    disp(m)
elseif BMI>=18.5 & BMI <= 24.9;
    m =sprintf('Your BMI value is %d which classifies you as Normal.',BMI);
    disp(m)
elseif BMI>=25 & BMI <= 29.9;
    m =sprintf('Your BMI value is %d which classifies you as Overweight.',BMI);
    disp(m)
else BMI>= 30;
    m =sprintf('Your BMI value is %d which classifies you as Obese.',BMI);
    disp(m)
end


%%
% Question 9

% This is about Cell array
AC(1,1) = {'Matlab Programming'};
AC(2,1) = {'ENGI316'};
AC(2,3) = {[4,8;12,25]};
AC(3,1) = {[5]};
AC(3,2) = {[10,20,30]};

% Question 9a).
celldisp(AC);
cellplot(AC);

% Question 9b).
AC(2,1) = {15}

% Question 9c).
[num,txt,raw] = xlsread("myExcel.xlsx")

%AC{1,2} 
AC{1,2} = xlsread('myExcel.xlsx','Sheet1','A1')
AC{1,3} = xlsread('myExcel.xlsx','Sheet1','A2')
AC{2,2} = xlsread('myExcel.xlsx','Sheet1','B1')
AC{3,3} = xlsread('myExcel.xlsx','Sheet1','B2')

celldisp(AC)