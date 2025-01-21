#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let frontpage(school, year, title, subtitle, names, department, subject) = {
  let bg = block(
    inset: (left: 8.5%, right: 8.5%, top: 40pt, bottom: 30pt),
    grid(
      rows: (auto, 1fr, auto),
      {
        image("../img/logos-horizontal.jpg")
        line(length: 100%, stroke: black + 1pt)
      },
      none,
      {
        line(length: 100%, stroke: black + 1pt)
        align(left)[
          #department\
          #smallcaps(join(school, [\ ]))\
          Gothenburg, Sweden, #year
        ]
      }
    )
  )

  set page(background: bg, margin: 50pt)
  set text(font: "Libertinus Serif")
  v(6.969420%)
  align(center + horizon)[
    #huge(weight: "bold", title)

    #x-large(subtitle)

    Master's Thesis in #subject

    #smallcaps(x-large(names))
  ]
}
