#let accent = rgb("#1a1a1a")
#let muted = rgb("#555555")

#let github_icon = text(fill: accent, image("assets/github.svg", height: 11pt))
#let globe_icon = text(fill: accent, image("assets/globe.svg", height: 11pt))

#let section(title) = block(sticky: true, {
  v(6pt)
  text(size: 11.5pt, weight: "bold", tracking: 0.5pt)[#upper(title)]
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + accent)
  v(4pt)
})

#let entry(title: none, date: none, github: none, deploy: none, body) = block(breakable: false, {
  if title != none or date != none {
    grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      {
        text(weight: "bold")[#title]
        if deploy != none {
          h(4pt)
          link(deploy)[#box(baseline: 1pt, globe_icon)]
        }
        if github != none {
          h(4pt)
          link(github)[#box(baseline: 1pt, github_icon)]
        }
      },
      text(fill: muted, style: "italic")[#date],
    )
    v(2pt)
  }
  body
  v(5pt)
})

#let bullet(body) = {
  set par(leading: 0.4em)
  set block(spacing: 0.5em)
  set text(size: 11pt)
  list(marker: text(fill: muted)[•], body)
}

#let cv(cv_data) = {
  set document(title: cv_data.meta.title, author: cv_data.header.name)
  set page(paper: "a4", margin: (x: 1.7cm, top: 1.35cm, bottom: 1.2cm))
  set text(size: 11.5pt, lang: cv_data.meta.lang)
  set par(justify: true, leading: 0.58em)

  text(size: 19pt, weight: "bold")[#cv_data.header.name]
  v(2pt)
  text(fill: muted)[
    #cv_data.header.location
    #h(5pt) • #h(5pt) #link("https://github.com/daniqss")[#cv_data.header.github]
    #h(5pt) • #h(5pt) #cv_data.header.phone
    #h(5pt) • #h(5pt) #link("mailto:" + cv_data.header.email)[#cv_data.header.email]
  ]

  v(4pt)
  cv_data.profile

  for s in cv_data.sections {
    section(s.title)
    for e in s.entries {
      entry(title: e.title, date: e.date, github: e.at("github", default: none), deploy: e.at("deploy", default: none), e.body)
    }
  }
}
