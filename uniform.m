% [+] AmirHossein Aliyan
% [+] 991771231


% clear output and previous vars
clc
clear all

% define N, X and dist object 
a = 0;
b = 1;
N = 100000;
X = rand(1, N);
pd = makedist('Uniform');

PDFTHEORY = (b-a) ./ 1;
PDFSOFT = pdf(pd, X);
YPDF(1, N) = PDFTHEORY;


CDFSOFT = cdf(pd, X);

% draw cdf and pdf
figure; plot(X, YPDF); xlabel('data'); ylabel('theoretical pdf'); title('Uniform Distribution');
figure; plot(X, PDFSOFT); xlabel('data'); ylabel('software pdf'); title('Uniform Distribution');

% histogram
%figure;hist(X);

% avg, var and corr
average = mean(X);
variance = var(X);
correlation = variance + ((average).^2);

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);


