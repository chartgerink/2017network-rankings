library(igraph)
library(gridExtra)

par(mfrow = c(1,1))
for (i in 2^(3)) {
  # Create the adjacency matrix
  x <- matrix('-', nrow = i, ncol = i)
  diag(x) <- ''
  # Select only upper triangular matrix
  sel <- upper.tri(x)
  # Randomly assign some connections at 50:50 chance
  x[sel] <- sample(x = 0:1, size = sum(sel), replace = TRUE, prob = c(.8, .2))
  # Create the base of the plots
  g <- graph.adjacency(x)
  # Plot
  plot(g, layout = layout.reingold.tilford(g, root = 1))
}

# Some example measures
betweenness()
degree()
