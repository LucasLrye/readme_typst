#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge
#set page(width: auto, height: auto, margin: 5mm, fill: black)
#set text(white)

#align(center, text("Test the readme"))

#diagram(
	node-stroke: luma(80%),
  edge-stroke: 1pt,

  // Node start
  node((0,0), text(stroke: 0.5pt,"Get First element :") + text("OK"), stroke: black, name: <sw-init>),
  //background
  node((0,-1), name: <sw_top>, stroke: none),
  node(
    align(top, text(size: 10pt, red, "Initialization of Readme")),
    enclose: (<sw_top>,<sw-init>),
    stroke: teal, 
    fill: teal.lighten(60%),
    name: <sw>,
  ),
)