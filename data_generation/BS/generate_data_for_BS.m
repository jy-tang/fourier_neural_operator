% number of realizations for different Ks
N = 2048;
K_range = linspace(0.1,1.5,N);
% number of grid in price in [0,1]
s = 8192;
S_range = linspace(0.1,1,s);

a= zeros(N,s);
u = zeros(N,s);
r=0.05;
T = 1;
sigma = 0.2;


for k = 1:N
    K = rand()*1.0;
    [c,~] = BS_EuroCallPut(S_range,K,r,sigma,T,0);
    c_boundary = max(S_range-K,0);
    a(k,:) = c_boundary;
    u(k,:) = c;
    
end

save('../../data/BS_data1.mat','a','u')