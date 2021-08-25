% calculating the sample n necessary to interpret correlations, with a confidence interval not including 0, depending on r, 
% following equations from Bonett and Wright (2000), Sample size requirements for estimating ¨Pearson, Kendall and Spearman correlations, Psychometrika, 65(1), 23-2

r=sort([0.1:0.1:0.9,0.85,0.77]); %correlation strength studied
%for Pearson
c=1;
w=r.*2-eps; %because the width w of the CI needs to be just below the double of r so that the CI does not include 0
b=3;
n0=max(10,ceil(b+4.*(c.^2).*((1-r.^2).^2).*((1.96./w).^2))); %Z at alpha/2 = 1.96 with alpha = 5%
La=0.5.*(log(1+r)-log(1-r));
Lb=(c.*1.96)./((n0-b).^0.5);
L1=La-Lb;
L2=La+Lb;
Ldo=(exp(2.*L1)-1)./(exp(2.*L1)+1);
Lup=(exp(2.*L2)-1)./(exp(2.*L2)+1);
w0=(Lup-Ldo);
n_p=ceil(b+(n0-b).*((w0./w).^2));

%for Spearman
c=(1+(r.^2)./2).^0.5;
n0=max(10,ceil(b+4.*(c.^2).*((1-r.^2).^2).*((1.96./w).^2)));
La=0.5.*(log(1+r)-log(1-r));
Lb=(c.*1.96)./((n0-b).^0.5);
L1=La-Lb;
L2=La+Lb;
Ldo=(exp(2.*L1)-1)./(exp(2.*L1)+1);
Lup=(exp(2.*L2)-1)./(exp(2.*L2)+1);
w0=(Lup-Ldo);
n_s=ceil(b+(n0-b).*((w0./w).^2));

results = table(r', n_p', n_s', 'VariableNames',{'Correlation rho','Min n for Pearson','Min n for Spearman'});
disp(results)