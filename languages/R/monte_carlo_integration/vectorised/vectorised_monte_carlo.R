start_time = proc.time()
N=10^7
f = function(u) exp(-u^2/2)/sqrt(2*pi)
estimate = sum(runif(N, 0, 0.5) < f(runif(N, -5, 5)))/N*(0.5*10)

print(proc.time() - start_time)
print(estimate)
