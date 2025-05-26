library(DiagrammeR)

grViz("
digraph item_replenishment {

  # Graph settings
  graph [layout = dot, rankdir = LR, fontname = Helvetica]

  # Nodes (shapes)
  node [shape = rectangle, style = filled, fillcolor = lightblue, fontsize = 12]
  A [label = '1. Deploy New Items\\n(e.g., uncalibrated torque question)', fillcolor = '#FF9999']
  B [label = '2. Collect Response Data\\n(300 students answer)', fillcolor = '#FFFF99']
  C [label = '3. Auto-Calibrate\\n(Estimate difficulty/discrimination)', fillcolor = '#99FF99']
  D [label = '4. Update Item Bank\\n(Add validated questions)', fillcolor = '#99CCFF']

  # Example mock item
  node [shape = note, fillcolor = white, width = 1.5]
  E [label = 'Example Item Before:\\l- Text: Calculate torque on a rotating disc?\\l- Difficulty: Unknown\\l- Discrimination: Unknown']
  F [label = 'Example Item After:\\l- Difficulty: 0.75\\l- Discrimination: 1.2']

  # Edges (connections)
  A -> B -> C -> D -> A [color = grey, arrowhead = normal]
  E -> A [style = dashed, color = darkgrey]
  C -> F [style = dashed, color = darkgrey]

  # Add cycle label
  label = 'Item Replenishment Cycle in CAT'
  fontsize = 16
}
")
