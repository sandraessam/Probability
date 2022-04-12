%%rolling a coin A head occurs
rng('default');
num=rng;
x=rand(1,1000);
x=round(x);
index=linspace(1,1000,1000);
x=cumsum(x,2);
Res=x./index;
plot(index,Res);
title('Expermintal');
b = nchoosek(1,1);
p=0.5;
Binominal=b*(p)*(1-p)^(1-1);
%%
%% rolling a die
%% rolling a die A number greater than 3 occurs
x=randi([1 6],1,1000);
index=linspace(1,1000,1000);
x(find(x<=3))=0;
x(find(x>3))=1;
x=cumsum(x,2);
Res=x./index;
figure(2)
plot(index,Res);
title('Expermintal');
b = nchoosek(1,1);
p=0.5;
Binominal=b*(p)*(1-p)^(1-1);
%%
%% rolling two dice Sum of two dice equal 5
x=randi([1 6],1,1000);
y=randi([1 6],1,1000);
index=linspace(1,1000,1000);
sum=x+y;
idx=sum ==5;
sum(idx)=1;
idx=sum~=1; 
sum(idx)=0;
sum=cumsum(sum,2);
Res=sum./index;
figure(3)
plot(index,Res);
title('Expermintal');
%%
%%tossing coin probability of head(coded as 1) equal to 0.4 and probability of tail (coded as 0) equal to 0.6.
x=randi([1 10],1,1000);
index=linspace(1,1000,1000);
idx=x<=4; 
x(idx)=1;
idx=x >4;
x(idx)=0;
x=cumsum(x,2);
Res=x./index;
figure(4)
plot(index,Res);
title('Expermintal');
%%
%% The probability of rain in a day is p = 0.5.the probability of rain during weekend (i.e rain on any one of the 2 weekenddays Friday Or Saturday)
x=randi([0 1],1,1000);
y=randi([0 1],1,1000);
index=linspace(1,1000,1000);
sum=x+y;
idx=sum >0;
sum(idx)=1;
idx=sum==0; 
sum(idx)=0;
sum=cumsum(sum,2);
Res=sum./index;
figure(4)
plot(index,Res);
title('Expermintal');
%%