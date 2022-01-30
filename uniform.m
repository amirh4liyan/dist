% [+] AmirHossein Aliyan
% [+] 991771231


% clear output and previous vars
clc
clear all

% define N and X
N = 100000;
X = rand(1, N);

pd = makedist('Uniform');

cdf_var = cdf(pd, X);
pdf_var = pdf(pd, X);

% draw result for limited data (1 to 10)
figure; plot(X, cdf_var); xlabel('data'); ylabel('cdf'); title('Section One | Uniform Distribution');
figure; plot(X, pdf_var); xlabel('data'); ylabel('pdf'); title('Section One | Uniform Distribution');

% histogram
figure;hist(X);

% avg, var and covar
average = mean(X);
variance = var(X);
covariance = cov(X);

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['covariance :' num2str(covariance)]);
