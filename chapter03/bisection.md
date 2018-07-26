## The Intermediate Value Theorem and the Bisection Method

A number of algorithms for finding roots of nonlinear functions require smoothness conditions as we will see later in this
chapter. However, if a nonlinear function is not smooth enough it is a good idea to have functions that can find roots in
situations where smoothness conditions are relaxed. In this section, the Intermediate Value Theorem can be used as a basis for
an algorithm for root finding

### The Intermediate Value Theorem

In most calculus courses, the Intermeditate value theorem is used to characterize the behavior of any continuous function on a
closed and bounded interval. The following statement can be found in most university level or advanced placement calculus
textbook.

    Theorem (the Intermediate Value Theorem): Suppose f is a function that is continuous on the closed interval [a,b]. Then for
    any value C between f(a) and f(b), there exists at least one value, c\in [a,b], such that C=f(c).
    
We can translate this theorem for continuous functions into an algorithm for finding points at whcih the function is zero. First,
we can set C=0 and thus we look for points, c, where f(c)=0........
