#let ackpage(date, authors, acknowledgements) = [
  #heading(outlined: false)[Acknowledgements]
  #acknowledgements
  #v(30pt)
  #align(right)[
    #authors.join(", "), Gothenburg, #date.display()
  ]
]