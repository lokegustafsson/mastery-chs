#import "lib.typ" : join

#let abspage(school, title, subtitle, authors, department, abstract, keywords) = {
  par(leading: 0.55em)[
    #title\
    #subtitle\
    #upper(authors.join([\ ]))\
    #department\
    #join(school, ", ", last: " and ")
    #v(8pt)
    #heading(outlined: false)[Abstract]
    #v(8pt)
    #abstract
  ]
  v(1fr)
  if keywords.len() > 10 {
    panic("max 10 keywords allowed by the template")
  }
  if keywords.len() > 0 {
    [Keywords: #keywords.join(", ")]
  }
  v(10pt)
}
