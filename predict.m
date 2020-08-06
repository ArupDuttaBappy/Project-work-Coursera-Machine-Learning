function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
X = [ones(m, 1) X];

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Theta1 has size 25 x 401
% Theta2 has size 10 x 26
%alltheta(10*401)...X(5000,401)...X(1,401)
for i=1:size(X, 1)
  
  a1=(X(i,:))';
  z2=Theta1*a1;
  a2=sigmoid(z2);
  a2=a2';
  a2=[ones(1, 1) a2];
  a2=a2';
  z3=Theta2*a2;
  
  
  
  val=sigmoid(z3);
  [max_values,indices] =max(val,[],1);
   p(i)=indices;
  
  
end





% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%









% =========================================================================


end
