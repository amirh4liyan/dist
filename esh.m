clc
clear all
close all
msg = 'Enter M&V for uniform distribution, R for Riley distribution, E for exponential distribution,\nN for normal distribution, and M & V for normal distribution with mean and variance\n. (Note! Enter quotation marks in capital letters and inside the single ): ';

N = 10000;
a = input(msg);

switch a
    case 'U' 
        x = rand(1,N);
        a = 0;
        b = 1;
        theorical = 1/b-a;
        figure; plot([a, b] , theorical, '--', 'Linewidth', 2);
        hold on
        figure; h = histogram(x);
%         mean(n);
%         mean(n(:));
%         var(n);
%         cov(n)
        disp(['Mean:', num2str(mean(x))]);
        disp(['Overall average: ' num2str(mean(x(:)))]);
        disp(['Variance: ' , num2str(var(x))]);
        disp(['Covariance: ' num2str(cov(x))]);
        
    case 'M&V'
        n = input('Enter the desired average: ');
        m = input('Enter the desired variance: ');
        s = n + m * randn(1,N);
        mean(s);
        mean(s(:));
        std(s);
        histfit(s)
        disp(['Mean:', num2str(mean(n))]);
        disp(['Overall average: ' num2str(mean(n(:)))]);
        disp(['Standard deviation: ' , num2str(std(n))]);
        
    case 'R'
        x = randn(1,N);
        y = randn(1,N);
        x = x - mean(x(:));
        y = y - mean(y(:));
        variance = input('Enter the desired variance: ');
        range = 0:0.01:5;
        r = sqrt(variance * x.^2+y.^2);
        theorical = range / variance .* exp(-range .^2 / ( 2 * variance));
        plot(range, theorical, 'r' , 'LineWidth' , 2);
        hold on
        nbins = input('Enter the desired number of nbins: ');
        h = histogram(r , nbins, 'BinLimits', [range(1) range(end)]);
        m = input('pdf or cdf?! ');
        h.Normalization = m;
        legend({'theoretical' ; 'Histogram'})
        
    case 'E'
        x = rand(1,N);
        m = input('Enter the desired average: ');
        range = 0:0.01:5;
        theorical = 1 / m .* exp(-range / m);
        plot(range , theorical , 'r' , 'LinneWidth' , 2);
        hold on
        nbins = input('Enter the desired number of nbins: ');
        h = histgram (nbins , 'Binlimits' , [range(1) range(end)]);
        s = input('pdf or cdf?! ');
        h.normalization = s;
        legend({'theoretical' ; 'Histogram'})
        var = m .* 2;
        cor = 2 .* m .^2;
        disp = (['Variance: ' , num2str(var)]);
        disp(['Correlation: ' , num2str(cor)]);
        
    case 'N'
        x = randn(1,N);
        sigma = 1;
        mu = 0;
        variance = input('Enter the desired variance: ');
        mean = input('Enter the desired average: ');
        range = 0:0.1:5;
        theorical = (1 / sqrt(2 .* pi .* variance)) .* (exp(-range - mean) .^ 2 / 2 .* variance);
        plot(range , theorical , 'r' , 'LineWidth' , 2)
        hold on
        %nbins = input('Enter the desired number of nbins: ');
        %h = histogram (nbins, 'BinLimits' , [range(1) range(end)]);
        %s = input('pdf or cdf?! ');
        %h.normalization = s;
        %y = normpdf(x, mu, sigma)
        %u = normcdf(x, mu, sigma)
        var(x);
        cov(x)
        disp(['Variance: ' , num2str(var(x))]);
        disp(['Covariance: ' num2str(cov(x))]);
        
    default
        disp('fuls');
        
end
