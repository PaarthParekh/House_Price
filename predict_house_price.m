function predict_house_price ( alpha,num_iter)
[theta,mu,sigma]=house_multiple_features(alpha,num_iter);
str = inputdlg('Enter size of the house and the number of bedrooms separated by spaces or commas');
numbers = str2num(str{1});
x=reshape(numbers,[1,2]);
x=[1,x];
x(2)=(x(2)-mu)/sigma
price = x*theta;
fprintf('Predicted price=%f\n', price);
end