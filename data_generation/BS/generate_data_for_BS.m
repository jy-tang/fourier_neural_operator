% number of grid in price in [0,1]
Ns = 64;
S_range = linspace(0,1,Ns);
Nt = 50;
Tmax = 2;
T_range = linspace(0,Tmax,Nt+1);
T_range(1)=[];


r=0.0;
% number of realizations for different Ks
N = 5000;
sigma = rand(N,1);
K = rand(N,1);
u = zeros(N,Ns,Nt);
for counts = 1:Ns
    counts
    for countt = 1:Nt
        S = S_range(counts);
        T = T_range(countt);
        
        u(:,counts,countt) = BS_EuroCallPut(S,K,r,sigma,T,0);
    end
end
        



save('../../data/BS_data2.mat','u','sigma','K','S_range','T_range')