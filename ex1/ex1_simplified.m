

data = load('ex1data1.txt');
X = data(:, 1); 
y = data(:, 2);
m = length(y);
plotData(X, y);


X = [ones(m, 1), data(:,1)]; % Add a column of ones
theta = zeros(2, 1);

J = computeCost(X, y, theta);
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);

theta= gradientDescent(X, y, theta);
fprintf('Theta found by gradient descent: %f\n', theta);



hold on; % overwrite on previous figure
plot(X(:,2), X*theta, '-') 
legend('Training data', 'Linear regression')
hold off % close present figure


% Visualizing J(theta_0, theta_1)
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = computeCost(X, y, t);
    end
end


% Because of the way meshgrids work in the surf command, we need to
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
