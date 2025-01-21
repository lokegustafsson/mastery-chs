#import "lib.typ" : join

#let abspage(school, title, subtitle, authors, department, abstract, keywords) = {
  set text(13pt)
  [
    #title\
    #subtitle\
    #smallcaps(authors.join([\ ]))\
    #department\
    #join(school, ", ", last: " and ")
    #v(14pt)
    #heading(outlined: false)[Abstract]
    #abstract
  ]
  v(1fr)
  if keywords.len() > 0 {
    [Keywords: #keywords.join(", ")]
  }
}