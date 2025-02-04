#let tocpage(figures, tables) = {
  set page(numbering: "i")

  v(100pt)

  show heading: set text(size: 26pt)
  align(center, heading(outlined: false)[Contents])

  v(55pt)

  show outline.entry: it => {
    if it.element.func() != heading {
      return
    }
    let head = it.element
    let number = if head.numbering != none {
      numbering(head.numbering, ..counter(heading).at(head.location()))
    }
    if it.level == 1 {
      v(20pt, weak: true)
      text(weight: "semibold", [
        #number
        #h(0.5em)
        #head.body
        #h(1fr)
        #it.page
      ])
    } else {
      [
        #box(width: (it.level * (it.level + 0.5) - 2) * 0.35em)
        #number
        #h(0.5em)
        #head.body
        #box(width: 1fr, repeat(" . "))
        #it.page
      ]
    }
  }

  [
    #set text(size: 13pt)
    #outline(title: none)
  ]
  if figures {
    pagebreak(to: "odd")
    v(100pt)
    align(center, text(24pt)[= List of Figures])
    [
      #set text(size: 13pt)
      #outline(
        title: none,
        target: figure.where(kind: image),
      )
    ]
  }
  if tables {
    pagebreak(to: "odd")
    v(100pt)
    align(center, text(24pt)[= List of Tables])
    [
      #set text(size: 13pt)
      #outline(title: none, target: figure.where(kind: table))
    ]
  }
}
