#let tocpage(figures, tables) = {
  v(40pt)
  align(center, text(24pt, heading(outlined: false)[Contents]))
  v(20pt)
  outline(title: none)
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