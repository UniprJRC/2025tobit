%% Generate figures 3, 4 and 6  of the paper Robust Tobit Regression  for Censored Observations Using Extended Box-Cox Transformations  
% Marco Riani, Anthony C. Atkinson, Aldo Corbellini and Gianluca Morelli
%
% This file needs interaction and creates Figures 3, 4 and 6

%%
% Simulate the data
rng(4)
n=200;
lambda=0;
p=3;
sigma=0.5;
beta=1*ones(p,1);
X=randn(n,p)+1;
epsilon=randn(n,1);

y=X*beta+sigma*epsilon;
y=normYJ(y,1,lambda,'inverse',true,'Jacobian',true);

qq=quantile(y,0.3);
y(y<=qq)=qq;

qq=quantile(y,0.9);
y(y>=qq)=qq;

left=min(y);
right=max(y);


%% Prepare input Figures 3 and 4. Doubly censored data: unbalanced search, λ = 0.
% Monitoring residuals with brushing
yf=normYJ(y,1,lambda,'inverse',false,'Jacobian',false);
leftf=normYJ(left,1,lambda,'inverse',false,'Jacobian',false);
rightf=normYJ(right,1,lambda,'inverse',false,'Jacobian',false);

% zlimits=[leftf rightf];
% regressCens(yf,X,'left',min(zlimits),'right',max(zlimits),'dispresults',true)

outLXS=LXS(yf,X,'nsamp',100000);

out=FSRedaCens(yf,X,outLXS.bs,'left',leftf,'right',rightf,'init',100);

%%  Create Figures 3 and 4. Doubly censored data: unbalanced search, λ = 0. Monitoring residuals and brushing 
standard=struct;
standard.ylim=[-3 7];
resfwdplot(out,'datatooltip','','databrush',1,'standard',standard);

if prin==1
    % print to postscript
    print -depsc figs\ULT3a.eps;
    print -depsc figs\ULT3b.eps;

    print -depsc figs\ULT4a.eps;
    print -depsc figs\ULT4b.eps;

end


%%  Generate the data for example 2: outliers and a Lower Threshold
rng(2)
n=300;
lambda=-0.5;
p=5;
sigma=0.1;
beta=1*ones(p,1);
X=0.2*randn(n,p);
epsilon=randn(n,1);

y=X*beta+sigma*epsilon;
    y=normYJ(y,1,lambda,'inverse',true,'Jacobian',false);
    disp('YJ')
sel=1:30;
y(sel)=y(sel)+1.2;

qq=quantile(y,0.3);
y(y<=qq)=qq;
left=min(y);
right=Inf;



%% Prepare input for Figure 6
yf=normYJ(y,1,lambda,'inverse',false,'Jacobian',false);
leftf=normYJ(left,1,lambda,'inverse',false,'Jacobian',false);
rightf=normYJ(right,1,lambda,'inverse',false,'Jacobian',false);

zlimits=[leftf rightf];
%regressCens(yf,X,'left',min(zlimits),'right',max(zlimits),'dispresults',true)

outLXS=LXS(yf,X);
out=FSRedaCens(yf,X,outLXS.bs,'left',leftf,'right',rightf,'init',100);


%%  Create Figure 6. 
disp('This part is interactive')
resfwdplot(out,'datatooltip','','databrush',1);

if prin==1
    % print to postscript
    print -depsc figs\LO2a.eps;
    print -depsc figs\LO2b.eps;

end

