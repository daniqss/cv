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

// by now, the html feature dont follow the layout of normal typst syntax,
// so we have to build the html structure manually and then style it
#let entry_html(title: none, date: none, github: none, deploy: none, body) = html.elem("article", attrs: (class: "entry"), {
  if title != none or date != none {
    html.elem("header", attrs: (class: "entry-head"), {
      html.elem("h3", attrs: (class: "entry-title-line"), {
        html.elem("span", attrs: (class: "entry-title"))[#title]
        if deploy != none {
          html.elem("a", attrs: (class: "icon-link", href: deploy, title: "Deploy"))[#image("assets/globe.svg", height: 11pt)]
        }
        if github != none {
          html.elem("a", attrs: (class: "icon-link", href: github, title: "GitHub"))[#image("assets/github.svg", height: 11pt)]
        }
      })
      html.elem("span", attrs: (class: "entry-date"))[#date]
    })
  }
  html.elem("div", attrs: (class: "entry-body"), body)
})

#let cv_html(cv_data) = {
  set document(title: cv_data.meta.title, author: cv_data.header.name)

  html.elem("link", attrs: (rel: "stylesheet", href: "styles.css"))

  html.elem("main", attrs: (id: "cv", class: "cv"), {
    html.elem("header", attrs: (class: "cv-header"), {
      html.elem("h1", attrs: (class: "cv-name"))[#cv_data.header.name]
      html.elem("ul", attrs: (class: "cv-contact"), {
        html.elem("li")[#cv_data.header.location]
        html.elem("li", link("https://github.com/daniqss")[#cv_data.header.github])
        html.elem("li")[#cv_data.header.phone]
        html.elem("li", link("mailto:" + cv_data.header.email)[#cv_data.header.email])
      })
    })

    html.elem("p", attrs: (class: "cv-profile"), cv_data.profile)

    for s in cv_data.sections {
      html.elem("section", attrs: (class: "cv-section"), {
        html.elem("h2", attrs: (class: "section-title"))[#upper(s.title)]
        for e in s.entries {
          entry_html(title: e.title, date: e.date, github: e.at("github", default: none), deploy: e.at("deploy", default: none), e.body)
        }
      })
    }
  })
}
