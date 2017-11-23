%create parallel pool of workers on the local node
%Ensure that this is the same number as what you requested from the scheduler
pool = parpool('local',8)

disp('serial time')

tic
n = 200;
A = 500;
a = zeros(n);
for i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
toc

disp('Parallel time')
tic
n = 200;
A = 500;
a = zeros(n);
parfor i = 1:n
    a(i) = max(abs(eig(rand(A))));
end
toc

delete(pool)
