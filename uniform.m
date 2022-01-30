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

% draw cdf and pdf
figure; plot(X, cdf_var); xlabel('data'); ylabel('cdf'); title('Uniform Distribution');
figure; plot(X, pdf_var); xlabel('data'); ylabel('pdf'); title('Uniform Distribution');

% histogram
%figure;hist(X);

% avg, var and corr
average = mean(X);
variance = var(X);
correlation = variance + (average).^2;

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);
