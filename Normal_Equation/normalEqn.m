function [theta] = normalEqn()
[X,y]=load_data();
m=length(X);
X = [ones(m, 1) X];
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN() computes the closed-form solution to linear 
%   regression using the normal equations.
theta = zeros(size(X, 2), 1);
calculate_Tr=X'*X;
inv_calculate=pinv(calculate_Tr)*X';
theta=inv_calculate*y;
end
