from random import random
from pyspark import SparkConf, SparkContext
from time import time
import os
#This is set in the batch submission script
cores = os.environ['CORES']

conf = SparkConf().setAppName("Estimating pi")
sc = SparkContext(conf=conf)

def sample(p):
    x, y = random(), random()
    return 1 if x*x + y*y < 1 else 0

NUM_SAMPLES = 100000000

t1 = time()
count = sc.parallelize(xrange(0, NUM_SAMPLES)).map(sample) \
             .reduce(lambda a, b: a + b)
t2 = time()
print("Cores,Num_samples,pi,time")
print("{0},{1},{2},{3}".format(cores,NUM_SAMPLES,(4.0 * count / NUM_SAMPLES),(t2-t1)))

#print("NUM_SAMPLES:{0}").format(NUM_SAMPLES)
#print("Pi is roughly {0}".format((4.0 * count / NUM_SAMPLES)))
#print("Time: {0}".format(t2-t1))
