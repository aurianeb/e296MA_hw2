% Question 1
pd = makedist('Normal', 'mu', 100, 'sigma', 1);
display(pd);

% Question 2
% The probability density function of this distribution is: f(x) = (1 /
% sqrt(2 * pi)) * exp((x - 100)^2 / 2)

% Question 3

pd_mean = pd.mean;
display(pd_mean);

pd_median = pd.median;
display(pd_median);

pd_iqr = pd.iqr;
display(pd_iqr);

pd_variance = var(pd);
display(pd_variance);

pd_std = pd.std;
display(pd_std);

% Question 4
Y2 = random(pd, 2)
Y10 = random(pd, 10)
Y1000 = random(pd, 1000)

% Question 5
histogram(Y1000,'Normalization','pdf');

% Question 6
M_2_1000 = random(pd, 2, 1000);
M_10_1000 = random(pd, 10, 1000);
M_1000_1000 = random(pd, 1000, 1000);

% Question 7

mean_2_1000 = mean(M_2_1000, 2);
mean_10_1000 = mean(M_10_1000, 2);
mean_1000_1000 = mean(M_1000_1000, 2);

% Question 8
histfit(mean_2_1000, 2, 'normal');
histfit(mean_10_1000, 10, 'normal');
histfit(mean_1000_1000, 100, 'normal');

% Question 9
% M_k_1000 are arrays of k by 1000 indepenant random normal variables
% As stated by the central limit theorem, the mean of independant, identical variables
% tends towards the normal distribution as the number of samples grow
