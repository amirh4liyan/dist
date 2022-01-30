% [+] AmirHossein Aliyan
% [+] 991771231


% clear output
clc
clear all

% define N and x
N = 100000;
X = randn(1, N);

mu = 0;
sigma = 1;
pd = makedist('Normal', 'mu', mu, 'sigma', sigma);

cdf_var = cdf(pd, X);
pdf_var = pdf(pd, X);

% draw result for limited data (1 to 10)
figure; plot(X, cdf_var); xlabel('data'); ylabel('cdf'); title('Section One | Normal Distribution ');
figure; plot(X, pdf_var); xlabel('data'); ylabel('pdf'); title('Section One | Normal Distribution ');

% histogram
figure;hist(X);

% avg, var and covar
average = mean(X);
variance = var(X);
correlation = corr(X);

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);
