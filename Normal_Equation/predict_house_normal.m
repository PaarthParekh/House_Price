function predict_house_normal ()
theta=normalEqn();
str = inputdlg('Enter size of the house and the number of bedrooms separated by spaces or commas');
numbers = str2num(str{1});
x=reshape(numbers,[1,2]);
x=[1,x];
price = x*theta;
fprintf('Predicted price=$%f\n', round(price,2));
end
