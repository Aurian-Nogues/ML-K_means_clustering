function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

centroids = zeros(K, size(X, 2));

%generate a vector with random integers
randidx = randperm(size(X, 1));
%assign centroids to the K random points with index
%the random integers previously generated
centroids = X(randidx(1:K), :);


end

