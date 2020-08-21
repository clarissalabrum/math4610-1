#
# import some stuff
# -----------------
#
from matplotlib import pyplot as plt
import numpy as np
#
# this is hardwired for a logistic function - so give initial time and final
# time
# ----
#
start = 0.0
end = 20.0
#
# set an array of input/time values
# ---------------------------------
#
t = []
#
# initialize a variable to keep track of the time at each iteration and append
# the initial value to the array
# ------------------------------
#
x = 0.0
t.append(x)
#
# compute the time increment between samples
# ------------------------------------------
#
dx = ( end - start ) / 201.
#
# set the functional form for the logistic solution
# -------------------------------------------------
#
expression  = '(400.0 * np.exp(0.8*x)) / (500.0 + 3.0 * np.exp(0.8*x) )'
#
# initialize an array for the output/population density values
# ------------------------------------------------------------
#
p = []
p.append(eval(expression))
#
# set the loop iterator and start the while loop
# ----------------------------------------------
#
l = 0
while l < 200:
    #
    # compute the current value of the expression
    # -------------------------------------------
    #
    p.append(eval(expression))
    #
    # move on to the next value of the input
    # --------------------------------------
    #
    x = x + dx
    #
    # append the new value to the input array
    # ---------------------------------------
    #
    t.append(x)
    #
    # plus one the iterator
    # ---------------------
    #
    l += 1
#
# do the plot thing in matplotpy
# ------------------------------
#
plt.xlabel('time values')
plt.ylabel('population density values')
plt.title('Logistic Population Growth Example')
plt.plot(t, p)
plt.show()
