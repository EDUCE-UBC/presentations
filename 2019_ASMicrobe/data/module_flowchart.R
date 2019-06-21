# To create module flow diagram
library(DiagrammeR)

grViz("
      digraph {
# Student example
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=3, fontsize=16, color='#fc9272', style=filled]
      H;I;L;M
      
      node[shape=box, fontname=Helvetica,
      width=2, penwidth=3, fontsize=16, color='#fee0d2', style=filled]
      A;B;D;E;F;J
      
      # edges
      edge [color = black, arrowhead = vee, arrowtail = vee, penwidth=3]
      
      # edgestatements
      A->{B F J}
      B->D D->E
      F->H H->I
      J->L L->M
      J->F F->J
      
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
