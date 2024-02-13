clc
clear all
close all
x=rand(1,5000)-0.5;
x=sort(x);
sigma=0.5;
mean=0;
const=1/(sigma*sqrt(2*pi));
ans=const*exp((-1/2)* ((x-mean)/sigma).^2);
plot(x,ans);
title('Gaussian Curve');
xlabel('x');
ylabel('probability');

hold on

sigma=1;
const1=1/(sigma*sqrt(2*pi));
ans1=const1*exp((-1/2)* ((x-mean)/sigma).^2);
plot(x,ans1);
hold on 

sigma=1.1;
const1=1/(sigma*sqrt(2*pi));
ans1=const1*exp((-1/2)* ((x-mean)/sigma).^2);
plot(x,ans1);
hold off
legend('0.5','1','1.1');
