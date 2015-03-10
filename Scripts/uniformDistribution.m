function r = uniformDistribution(n, range)
r = (range(2)-range(1))*rand(n, 1)+range(1);
end
