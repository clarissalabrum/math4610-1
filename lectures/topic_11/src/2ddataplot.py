from matplotlib import pyplot as plt
import numpy as np
#
# initialize two arrays to store the data in
# ------------------------------------------
#
xpts=[]
ypts=[]
#
# user inputs a string for the name of the file containing the data
# -----------------------------------------------------------------
#
datafilename = input('Enter the name of a data file:\n')
#
# the code expects ordered pairs, one per line in the file with a comma
# separator - this is a very simple format
# ----------------------------------------
#
xpts, ypts = np.loadtxt(datafilename, delimiter=',', unpack=True)
#
# the next block will ask for an expression for the data generation
# ------------------------------------------
#
# now that the data is set up, we can do the graphics in the lines below
#
# set the maximum and minimum values for the graphing below
# ---------------------------------------------------------
#
xmin = np.min(xpts)
xmax = np.max(xpts)
#
# set the limits on the plot on the horizontal axis
# -------------------------------------------------
#
plt.xlim(xmin, xmax)
#
# plot the data using matplotlib.pyplot
# -------------------------------------
#
plt.plot(xpts, ypts, label='plot from data')
#
# create labels for the two axes in the 2-d plot
# ----------------------------------------------
#
hlabel = input('Enter the label for the horizontal axis:\n')
plt.xlabel(hlabel)
vlabel = input('Enter the label for the vertical axis:\n')
plt.ylabel(vlabel)
#
# create a title for the plot
# ---------------------------
#
ptitle = input('Enter the title for the plot:\n')
plt.title(ptitle)
#
# create a legend for the plot, if needed
# ---------------------------------------
#
plt.legend()
#
# show the plot of the data
# -------------------------
#
plt.show()
#
