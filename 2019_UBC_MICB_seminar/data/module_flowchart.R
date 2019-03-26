# To create module flow diagram
library(DiagrammeR)

grViz("
      digraph {
      # Base statements
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=2, fontsize=11, color=black]
      A
      
      # Cmd line statements
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=2, fontsize=11, color=lightblue]
      B;D;E
      
      # R statements
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=2, fontsize=11, color=steelblue]
      F;H;I
      
      # Stat statements
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=2, fontsize=11, color=darkgoldenrod1]
      J;L;M
      
      # edgestatements
      A->{B F J}
      B->D D->E
      F->H H->I
      J->L L->M
      F->L F->M J->F
      
      # define ranks
      subgraph {rank = same; B;F;J}
      
      # define labels
      A[label='Introduction \nto data science']
      
      B[label='Command line \nintroduction']
      D[label='Applications']
      E[label='Advanced \napplications']
      
      F[label='R/RStudio \nintroduction']
      H[label='Applications']
      I[label='Advanced \napplications']
      
      J[label='Statistics \nintroduction']
      L[label='t-test']
      M[label='ANOVA and \nlinear regression']
      }
      ")
