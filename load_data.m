function [X,y]= load_data()
[file,folder]=uigetfile
filename=fullfile(folder,file)
data=load(filename);
X=data(1:30,1:2);
y=data(1:30,3)

fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');