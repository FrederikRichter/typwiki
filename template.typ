#let template(
  keywords: (),
  authors: (),
  date: none,
  title,
  doc,
) = {
    let title = lower(title)
    let keywords = {
        let res = ()
        for k in keywords {
            res.push(lower(k))
        }
    res
    }
  metadata((
    keywords: keywords,
  ))
  set text(lang: "de")
  set page(
    paper: "a4",
    header: grid(
      columns: (1fr, 3fr, 1fr),
      align(left)[#smallcaps[#authors.join[ \ ]]],
      align(center)[#text(14pt, [_ #smallcaps[#title]_])],
      align(right)[#smallcaps[#keywords.join[, ]]],
    ),
  )

set heading(numbering: "1.")
  doc
}

#let frame(content) = [
  #block(
    breakable: false,
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
    #block(breakable: false, [
    #text(size: 14pt, style: "italic", [Theorem #tag])

    #content

    <theorem>
    ])
]

#let definition(tag, content) = [
    #block(breakable: false, [
    #text(size: 14pt, style: "italic", [Definition #tag])

    #content

    <definition>
    ])

]

#let remark(tag, content) = [

    #block(breakable: false, [
    #text(size: 14pt, style: "italic", [Remark #tag])

    #content

    <remark>
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

#let bibliography = [#bibliography(("./zettel-bib.yaml", "./bib.yaml"))]
