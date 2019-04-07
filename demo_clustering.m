% this script runs a demo of a k-mean clustering algo

%% Initialization
clear ; close all; clc

% Load an example dataset
fprintf('Loading data... \n')
load('demo_data.mat');


% Settings for running K-Means
K = 3;
max_iters = 10;

%set initial centroids randomly
fprintf('Setting initial centroids... \n')
initial_centroids = kMeansInitCentroids(X, K);

%run K means centroids. True at the end tells the function to 
%plot the progress
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);

% in practice K-means is subject to local minimums, especially
% if K is a small number <10
% run the algo 100x with 100 random intialisation and keep best result
% (minimum sum of distance between each point and their centroid)



