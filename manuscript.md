# Towards a network of scholarly outputs

## Introduction

Scholarly thinking is facing many issues that simultaneously threaten its sustainability. 

One of these issues pertains to access.

Another of these issues pertains to reproducibility in various forms.

Yet another of the issues pertains to 

### Current metrics

1. backward looking
2. invalid
    * journal impact factor
    * citations
    * h-index
3. not question based
    * use bad proxy because nothing else is available ("we have to do something")

## Granular communication

### Empirical cycle

1. Change empirical cycle into empirical network.
2. Directional adjacency matrix in a [Directional Acyclic Graph (DAG)](https://en.wikipedia.org/wiki/Directed_acyclic_graph)
3. Ordered by time (ensures chronology)
4. Subsetting of networks EASY after ordering for time (just take i:j,i:j)
5. [Topological sort](https://en.wikipedia.org/wiki/Topological_sorting)
6. Y direct descendant of X

### Network structure

<!-- Most important right now -->

- [ ] Create illustrations for 2^(1:10) w topological sort
- [ ] Explain network composition for a select few

## Renewing metrics

1. connection strength
2. density
3. betweenness
4. brokerage
5. centrality
6. dispersion


### Backward looking
### Forward looking

## Use cases

### Funders

### Individual researchers

### Evaluation committees

### Universities

### Award committees

* critical path computation, allows for recognition of all involved players.

## Discussion



# Infrastructure notes

These popped-up during the project, but are out of scope and will be used for a more infrastructure based project:

* Sparse matrices will be necessary to make the network adjacency matrix efficient
* Can think about [incidence matrices](https://en.wikipedia.org/wiki/Incidence_matrix) as relational indicators
* infrastructure levels:
    * create network
    * usage data (see [10.1145/1378889.1378928](http://public.lanl.gov/herbertv/papers/Papers/2008/JCDLbollen.pdf))