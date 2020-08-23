from matplotlib import pyplot as plt
import numpy as np
#
# initialize two arrays to store the data in
# ------------------------------------------
#
xpts=[]
ypts=[]
#
# get the enpoints of the interval that defines the graphical domain
# ------------------------------------------------------------------
#
xmin = input('Enter left endpoint of an interval:\n')
xmin = float(xmin)
xmax = input('Enter right endpoint of an interval:\n')
xmax = float(xmax)
#
# get the number of points for graphing the expression given
# ----------------------------------------------------------
#
nvals = input('Enter the number of points for graphing the expression:\n')
nvals = int(nvals)
delx = ( xmax - xmin ) / float(nvals)

i = 0
while i<=nvals:
        x = xmin + float(i) * delx
        xpts.append(x)
        i += 1
#
# now that the data is set up, we can do the graphics in the lines below
# ----------------------------------------------------------------------
#
plt.xlim(xmin, xmax)
#
# loop over the number of expressions specified
# ---------------------------------------------
#
expression = input('Enter the next expression (include np.) for f(x):\n')
#
# loop over the points, evaluating the expression
# -----------------------------------------------
#
i = 0
while i<=nvals:
        x = xpts[i]
        ypts.append(eval(expression))
        i += 1
#
# plot the data using matplotlib.pyplot
# -------------------------------------
#
plt.plot(xpts, ypts, label=expression)
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
