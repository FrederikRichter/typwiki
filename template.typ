#let template(
  keywords: (),
  authors: (),
  date: none,
  title,
  doc,
) = {
  metadata((
    keywords: keywords,
  ))
  set page(
    paper: "a4",
    header: grid(
      columns: (1fr, 3fr, 1fr),
      align(left)[#smallcaps[#authors.join[ \ ]]],
      align(center)[#text(14pt, [_ #title _])],
      align(right)[#smallcaps[#keywords.join[, ]]],
    ),
  )
  doc
}

#let frame(content) = [
  #box(
    [
      #pad(
        10pt,
        content,
      )
    ],
    stroke: black,
  )
]


#let theorem(tag, content) = [
  #frame([
    #text(size: 14pt, style: "italic", [Theorem #tag])

    #content
  ])
]

#let embed(file) = [
  #frame([
    #text(
      size: 14pt,
      style: "italic",
      [$==>$ #file #cite(label(file))],
    )

    #include file
  ])
]

#let bibliography = [#bibliography("./biblatex-examples.bib")]
