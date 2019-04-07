function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

%to be returned
idx = zeros(size(X,1), 1);

%   create distance matrix mxk with m number of training exemples
distance_matrix = zeros(size(X,1), K);

%create matrix with distance between each point and all centroids
for i = 1:K
    c = centroids(i,:);
    temp = bsxfun(@minus, X, c); %substract centroid from each x
    temp = temp.^2; %square each dimension to get norms
    temp = sum(temp,2); % sum norms to get distance to centroid
    distance_matrix(:,i) = temp; %add vector to distance matrix
end

% get index of minimum for each row and put it in idx
for i = 1:size(idx,1)
    data_point = distance_matrix(i,:); %select a datapoint
    [M, I] = min(data_point); % get index of minimum in i
    idx(i) = I; %store minimum index in idx vector
end


end

