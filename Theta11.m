% this module is preprocessing my own images to 'double' data-typed matrix
% but double datatype is not compatible with the neural network classifier 
% that was trained using data from 'ex4data1.mat'.
% Expected classification is not happenning.

%%  try (imageTo20x20Gray) ....

img=imread('oneRE.jpg');
%I=rgb2gray(img);
J=im2double(img); % image represented as double datatype matrix
Xtest=J(:)';% matrix to vector 

%Xtest=imageTo20x20Gray('two.jpg',:,-1);
%Xtest=X(559,:);
%fprintf('\n Xtest is : \n\n');
%fprintf('%f   ',Xtest);
%ytest=2;
pred = predict(Theta1, Theta2, Xtest);
fprintf('\n predicted value is : %d \n', pred);

%fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == ytest)) * 100);
  