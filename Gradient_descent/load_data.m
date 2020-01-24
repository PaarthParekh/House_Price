function [X,y]= load_data()
[file,folder]=uigetfile;
filename=fullfile(folder,file);
data=load(filename);
X=data(:,1:2);
y=data(:,3);
end
