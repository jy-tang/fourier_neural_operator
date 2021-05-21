function [c,p] = BS_EuroCallPut(S,K,r,sigma,T,t)
    d1=(log(S/K)+(r+sigma^2/2)*(T-t))/(sigma*sqrt(T-t));
    d2=d1-sigma*sqrt(T-t);
    c=S.*normcdf(d1)-K*exp(-r*(T-t))*normcdf(d2);
    p=K*exp(-r*(T-t))*normcdf(-d2)-S.*normcdf(-d1);