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

fun = @(x) ((1) ./ sqrt(sigma.*2.*pi)) .* exp(((-1) ./ (2)) .* ((x - mu) ./sigma));

0DFTHEORY = 

cdf_var = cdf(pd, X);
pdf_var = pdf(pd, X);

% draw cdf and pdf
figure; plot(X, cdf_var); xlabel('data'); ylabel('cdf'); title('Normal Distribution');
figure; plot(X, pdf_var); xlabel('data'); ylabel('pdf'); title('Normal Distribution');

% histogram
%figure;hist(X);

% avg, var and covar
average = mean(X);
variance = var(X);
correlation = variance + (average).^2;

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);
