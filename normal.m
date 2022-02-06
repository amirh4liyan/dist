% [+] AmirHossein Aliyan
% [+] 991771231


% clear output and previous vars
clc
clear all


% define N, X and dist object
N = 100000;
X = rand(1, N);
mu = 0;
sigma = 1;
pd = makedist('Normal', 'mu', mu, 'sigma', sigma);

% avg, var and corr
average = mean(X);
variance = var(X);
correlation = variance + (average).^2;

% compute pdf, cdf by theory
range = -5:0.1:5;
PDFTHEORY = average + variance .* (1 ./ sqrt(2.*pi)) .* exp((-1 ./ 2) .* (range.^2));
CDFTHEORY = (1./2) .* (1 + erf(range./sqrt(2)))

% compute pdf, cdf by software
PDFSOFT = pdf(pd, X);
CDFSOFT = cdf(pd, X);

% draw cdf and pdf
figure; plot(range, PDFTHEORY); xlabel('data'); ylabel('theoretical pdf'); title('Normal');
figure; plot(range, CDFTHEORY); xlabel('data'); ylabel('theoretical cdf'); title('Normal');
figure; plot(X, PDFSOFT); xlabel('data'); ylabel('software pdf'); title('Normal');
figure; plot(X, CDFSOFT); xlabel('data'); ylabel('software cdf'); title('Normal');


disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);
