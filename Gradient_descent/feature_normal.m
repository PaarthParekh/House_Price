function [X,mu,sigma]=feature_normal(X,col)
sigma=std(X(:,col));
mu=mean(X(:,col));
sub_mean=X(:,col)-mu;
normal_value=sub_mean/sigma;
X(:,col)= normal_value;
