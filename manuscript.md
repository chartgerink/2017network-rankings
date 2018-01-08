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

Research outputs are typically papers, which report on at least one research cycle after it has occurred. The communicative design of papers embeds hindsight and its biases in the reporting of results. Moreover, this design eliminates the verification of the chronology within a paper. On the other hand, the unit of a paper is encompasses so much that citations to other papers can indicate a tangent or a crucial link. Additionally, the paper is a bottleneck for what is communicated: It cannot properly deal with code, data, materials, etc.

When stages of research are communicated separately and as they occur, it changes the communicative design to eliminate hindsight and allows more types of outputs to be communicated. For example, a theory can be communicated first and hypotheses communicated afterwards, as a direct descendant of the theory. Subsequently, a design can be linked as a direct descendant of the hypotheses, materials as a direct descendant of the design, and so on. This would allow for the incorporation of materials, data, and analysis code (amongst others).

Figure 1 shows a simple example of how these different research stages (i.e., nodes) would directly connect to each other. The connection between these nodes only shows the direct descendance and could still include citations to other pieces of information. For example, a discussion section could be a direct descendant of a results section and could still include citations to other relevant findings.

[![Directed Acyclic Graph](https://upload.wikimedia.org/wikipedia/commons/c/c6/Topological_Ordering.svg)](https://en.wikipedia.org/wiki/Directed_acyclic_graph) 

**Figure 1. A Directed Acyclic Graph (DAG) of connected research stages. The ordering is chronological (top-bottom) and therefore nodes that are situated below one another cannot refer upwards.**

Given that these piecemeal units are communicated as they occur, chronology is embedded in the communication process with many added benefits. For example, preregistration of hypotheses tries to ensure that predictions precede observations, which would be embedded with such piecemeal communication. Moreover, if research outputs are communicated as they are produced, selective reporting (i.e., publication bias) is reduced by having already communicated the data before results are generated. 

With append-only registers, the chronology and contents of these outputs can be ensured and preserved over time. This can occur efficiently and elegantly with the Dat protocol. In short, the Dat protocol is a peer-to-peer protocol that provides non-adjustable timestamps to each change that occurs within a folder, which is given a permanent unique address on the peer-to-peer Web (36^64 addresses possible). Further details of this protocol fall outside of the scope of this paper.

## Metrics

With a time-ordered sort of various research outputs and their parent nodes, a directional adjacency matrix can be extracted for network analysis. Table 1 shows the directional adjacency matrix for Figure 1. Parent nodes must precede the child nodes in time, therefore only [J(J-1)]/2 of cells of the adjacency matrix are filled in, where J is the number of research outputs.

**Table 1. Directional adjacency matrix for Figure 1. Nodes are ordered according to time (top-bottom in Figure 1). Rows indicate the source node, columns indicate the target node.** 

|        | node01 | node02 | node03 | node04 | node05 | node06 | node07 | node08 | node09 |
|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
| node01 | -      | 1      | 0      | 1      | 0      | 0      | 0      | 0      | 0      |
| node02 | -      | -      | 1      | 0      | 0      | 0      | 1      | 0      | 0      |
| node03 | -      | -      | -      | 0      | 0      | 0      | 0      | 0      | 0      |
| node04 | -      | -      | -      | -      | 1      | 1      | 0      | 0      | 1      |
| node05 | -      | -      | -      | -      | -      | 0      | 0      | 1      | 1      |
| node06 | -      | -      | -      | -      | -      | -      | 1      | 0      | 0      |
| node07 | -      | -      | -      | -      | -      | -      | -      | 1      | 0      |
| node08 | -      | -      | -      | -      | -      | -      | -      | -      | 0      |
| node09 | -      | -      | -      | -      | -      | -      | -      | -      | -      |



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
