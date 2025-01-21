#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let thirdpage(school, year, title, subtitle, authors, department) = {
  set text(font: "Libertinus Serif")
  set page(margin: (left: 120pt, right: 120pt, top: 90pt, bottom: 90pt))

  align(center + horizon,
    grid(
      rows: (auto, 1fr, auto),
      large(smallcaps[Master's Thesis 2025]),
      {
        x-large(weight: "bold", title)
        v(0.2cm)
        large(subtitle)
        v(1cm)
        large(smallcaps(authors))
      },
      [
        #image("../img/logos-vertical.png", width: 35%)
        #v(5mm)
        #department\
        #smallcaps(join(school, [\ ]))\
        Gothenburg, Sweden, #year
      ]
    )
  )
}
