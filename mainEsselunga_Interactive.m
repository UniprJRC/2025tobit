%% Generate figures 9-10 of the paper Robust Tobit Regression  for Censored Observations Using Extended Box-Cox Transformations  
% Marco Riani, Anthony C. Atkinson, Aldo Corbellini and Gianluca Morelli
%
% This file needs interaction and creates Figures 9 and 10

%% Real data
load Esselunga.mat;

X=Esselunga{:,1:end-1};
y=Esselunga{:,end};

left=0;
right=Inf;


%% Prepare input for Figure 9
lambda=0.75;
yf=normYJ(y,1,lambda,'inverse',false,'Jacobian',false);
leftf=normYJ(left,1,lambda,'inverse',false,'Jacobian',false);
rightf=normYJ(right,1,lambda,'inverse',false,'Jacobian',false);
p=size(X,2);
Xf=normYJ(X,(1:p)',lambda*ones(p,1),'inverse',false,'Jacobian',false);
if right==Inf
    rightf=Inf;
end
selvar=[1 3 6 8];
out5=FSRedaCens(yf,X(:,selvar),0,'left',left,'right',right);
resfwdplot(out5)



%% Create Figure 9.  Unbalanced search using the four significant variables, λ = 0.75, residual monitoring 
standard=struct;
standard.xlim=[360 n+1];
resfwdplot(out5,'standard',standard,'databrush',1,'datatooltip','')

if prin==1
    % print to postscript
    print -depsc figs\MD3a.eps;
    print -depsc figs\MD3b.eps;
end


%% Prepare input for Figure 10 (MD5a.eps and MD5b.eps)
balancedSearch=false;
selvar=[1 3 6 8];
out=FSRfanCens(y,X(:,selvar),'nsamp',50000,'la',la,'left',left,'right',right, ...
    'family','YJ','init',round(n*0.4),'balancedSearch',balancedSearch);

%% Create Figure 10. Unbalanced search using the four significant variables, λ = 0.75, fanplot
fanplotFS(out,'databrush',1, ...
    'titl','','xlimx',[290 510]);

if prin==1
    % print to postscript
    print -depsc figs\MD5a.eps;
    print -depsc figs\MD5b.eps;
end
