#let tocpage(figures, tables) = {
  v(40pt)
  align(center, text(24pt, heading(outlined: false)[Contents]))
  v(20pt)
  {
    show outline.entry.where(level: 1): set outline.entry(fill: none)
    show outline.entry.where(level: 1): it => {
      v(12pt)
      strong(it)
    }
    outline(title: none, indent: auto)
  }
  if figures {
    pagebreak(to: "odd")
    align(center, text(24pt)[= List of Figures])
    outline(
      title: none,
      target: figure.where(kind: image),
    )
  }
  if tables {
    pagebreak(to: "odd")
    align(center, text(24pt)[= List of Tables])
    outline(title: none, target: figure.where(kind: table))
  }
}
