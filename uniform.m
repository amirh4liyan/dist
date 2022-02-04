% [+] AmirHossein Aliyan
% [+] 991771231


% clear output and previous vars
clc
clear all

% define N, X and dist object 
N = 100000;
X = rand(1, N);
pd = makedist('Uniform');

function pdf_var = pdf_theory(a, b)
    pdf_var = (b-a) / 1;
end

function pdf_var = pdf_soft(X)
    pdf_var = pdf(pd, X);
end


PDFTHEORY = pdf_theory(0, 1);
PDFSOFT = pdf_soft(X);

cdf_var = cdf(pd, X);

% draw cdf and pdf
figure; plot(X, PDFTHEORY); xlabel('data'); ylabel('theoretical pdf'); title('Uniform Distribution');
figure; plot(X, PDFSOFT); xlabel('data'); ylabel('software pdf'); title('Uniform Distribution');

% histogram
%figure;hist(X);

% avg, var and corr
average = mean(X);
variance = var(X);
correlation = variance + (average).^2;

disp(['average  : ' num2str(average)]);
disp(['variance : ' num2str(variance)]);
disp(['correlation : ' num2str(correlation)]);
