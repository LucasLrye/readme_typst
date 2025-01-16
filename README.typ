#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge
#set page(height: auto, margin: 4mm)


#set text(white)
#let  text-color = rgb(240, 246, 252)
#let  background-color = rgb("#0d1117")
#set page(fill: background-color)
#set text(text-color)
#set heading(numbering: "1.1")

V1 is centered
#align(center,text("\nTest the readme v2"))


#set text(black)
#align(center)[#diagram(
	node-stroke: luma(80%),
  edge-stroke: 1pt,

  // Node start
  node((0,0), text(stroke: 0.5pt,"Testing :") + text("ok"), stroke: black, name: <sw-init-config>),
  node((1,1), [*Testing code 2*], stroke: black, name: <sw-init-prio>),
  node((-1,2), [*Testing code 3*], stroke: black, name: <sw-ok>),
  //background
  node((0,-1), name: <sw_top>, stroke: none),
  node(
    align(top, text(red, "Initialization of TIME")),
    enclose: (<sw_top>,<sw-init-config>, <sw-init-prio>, <sw-ok>),
    stroke: teal, 
    fill: teal.lighten(60%),
    name: <sw>,
  ),
)]

#set text(white)
#align(right, text("End of chapter"))