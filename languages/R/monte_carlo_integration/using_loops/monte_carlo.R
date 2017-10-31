# start the clock
start_time = proc.time()
f = function(u) exp(-u^2/2)/sqrt(2*pi)

simulate_pt = function(i){
    x = runif(1,-5,5); y = runif(1,0,0.5);
    y < f(x)
}

N = 10^7; hits = 0
for(i in 1:N)
 hits = hits + simulate_pt() 
(estimate = hits/N*(0.5*10))

#Stop the clock
print(proc.time() - start_time)
print(estimate)
