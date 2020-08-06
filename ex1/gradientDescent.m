  function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  %   GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

%   Initialize some useful values


m = length(y); % number of training examples

J_history = zeros(num_iters, 1);


for iter = 1:num_iters


%  need to supply the updates to theta within each iteration.
%  A good way to verify that gradient descent is working correctly is to look
%  at the value of J(theta) and check that it is decreasing with each step.

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
H=X*theta;

Errors=(H-y).*X(:,1);
theta(1)=theta(1)-alpha.*(1/m).*sum(Errors);

Errors2=(H-y).*X(:,2);
theta(2)=theta(2)-alpha.*(1/m).*sum(Errors2);





    % ============================================================

    % Save the cost J in every iteration    

    
end

end
