#import "template.typ": *
#show: doc => template(
  keywords: ("DM", "CS", "Math"),
  authors: ("Frederik Richter",),
  "testing",
  doc,
)

== Introduction
In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

#theorem(
  1.2,
  [
    #lorem(40)
  ],
)

#embed("embed.typ")

#bibliography
