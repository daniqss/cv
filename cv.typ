#set document(
  title: "CV — Daniel Queijo Seoane",
  author: "Daniel Queijo Seoane",
)
#set page(paper: "a4", margin: (x: 1.7cm, top: 1.35cm, bottom: 1.2cm))
#set text(size: 11.5pt, lang: "es")
#set par(justify: true, leading: 0.58em)

#let acento = rgb("#1a1a1a")
#let tenue = rgb("#555555")

#let seccion(titulo) = block(sticky: true, {
  v(6pt)
  text(size: 11.5pt, weight: "bold", tracking: 0.5pt)[#upper(titulo)]
  v(-3pt)
  line(length: 100%, stroke: 0.6pt + acento)
  v(4pt)
})

#let entrada(titulo: none, fecha: none, cuerpo) = block(breakable: false, {
  if titulo != none or fecha != none {
    grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      text(weight: "bold")[#titulo], text(fill: tenue, style: "italic")[#fecha],
    )
    v(2pt)
  }
  cuerpo
  v(5pt)
})

#let punto(cuerpo) = {
  set par(leading: 0.4em)
  set block(spacing: 0.5em)
  set text(size: 11pt)
  list(marker: text(fill: tenue)[•], cuerpo)
}

#text(size: 19pt, weight: "bold")[Daniel Queijo Seoane]
#v(2pt)
#text(fill: tenue)[
  A Coruña, España
  #h(5pt) • #h(5pt) #link("https://github.com/daniqss")[github.com/daniqss]
  // #h(5pt) • #h(5pt) #link("https://daniqss.github.io")[daniqss.github.io]
  #h(5pt) • #h(5pt) +34 664 57 12 88
  #h(5pt) • #h(5pt) #link("mailto:danielqueijo14@gmail.com")[danielqueijo14\@gmail.com]
]

#v(4pt)
Desarrollador de software cursando cuarto año de Ingeniería Informática, mención en
Ingeniería de Computadores, con especial interés en sistemas embebidos, software de bajo
nivel y Linux para dispositivos dedicados. Ganador del premio a mejor proyecto Open Source
en el HackUDC 2026. Experiencia en desarrollo de sistemas, bare metal, web y Linux,
en proyectos Open Source realizados en equipo y en solitario.
En busca de mi primera experiencia laboral para aportar valor en proyectos reales y desafiantes.

#seccion("Experiencia")

#entrada(
  titulo: link("https://github.com/daniqss/gbeed")[Gbeed],
  fecha: "Octubre 2025 — Actualidad",
)[
  Emulador de Game Boy escrito en Rust usando Raylib, con el objetivo de crear una consola DIY.
  #v(3pt)
  #punto[
    Diseñé una arquitectura modular con un núcleo del emulador agnóstico al frontend, lo que
    permite testeo headless sencillo y añadir nuevos frontends: web mediante WASM, una sesión gráfica de
    Linux o un entorno embebido como una Raspberry Pi Zero con un minidisplay.
  ]
  #punto[
    Implementé los diferentes subsistemas (CPU, procesado de píxeles, audio, timers e interrupciones), garantizando
    su correcta interoperabilidad y sincronización.
  ]
  #punto[
    Creé una imagen de Linux declarativa y reproducible con NixOS para conseguir un sistema inmutable y preconfigurado
    que con el objetivo de ofrecer una experiencia de usuario plug-and-play.
  ]
  #punto[
    Validé el emulador de forma automatizada contra decenas de tests propios y de la comunidad,
    asegurando el funcionamiento de los juegos más vendidos y buscando un balance adecuado entre
    precisión y rendimiento.
  ]
  #punto[
    Realicé análisis de rendimiento para optimizar los puntos calientes y cuellos de botella consiguiendo fluidez y estabilidad en microcomputadores.
  ]
]

#entrada(titulo: "Stepcode", fecha: "Febrero 2026")[
  Generador de sitios web estáticos con ejecución de pseudocódigo paso a paso, ideado para crear
  recursos educativos en forma de libros online que enseñan a programar visualizando algoritmos
  y el flujo de los programas.
  #v(3pt)
  #punto[Diseñé e implementé el generador de HTML y CSS a partir de Markdown, con soporte para
    configuración y personalización del proyecto.]
  #punto[Integré el generador con el intérprete de pseudocódigo (Vanilla JS) y añadí las
    características esenciales de experiencia de usuario (vista de árbol) y de desarrollo
    (documentación y templates para crear nuevos libros).]
  #punto[Lideré el despliegue con CI/CD y la estructura open source: licencia, templates de
    issues/PR, changelogs y buenas prácticas Git/GitHub (Conventional Commits, Git Branching).]
]

#entrada(titulo: "Interactive Keyboard", fecha: "Marzo — Junio 2025")[
  #punto[Aplicación multiplataforma (Tauri + React) controlable también desde un microcontrolador
    y desplegada en formato web y como aplicación para Linux y Windows.]
]

#seccion("Educación")

#entrada(
  titulo: "Universidade da Coruña",
  fecha: "Septiembre 2022 — Actualidad",
)[
  Ingeniería Informática, mención en Ingeniería de Computadores.
  #v(3pt)
  #punto[Desarrollo bare metal para ARM Cortex-M0, usando el SDK del fabricante y FreeRTOS.]
  #punto[Procesamiento digital de señal: convolución y filtrado, análisis
    en frecuencia, modulaciones digitales y codificación de canal para detección y corrección de errores.]
  #punto[Análisis de rendimiento, optimización con instrucciones SIMD e implementación de
    algoritmos paralelos con OpenMPI.]
  #punto[Procesamiento de lenguaje con Flex y Bison. Ensamblador de LR35902 (Game Boy) como
    proyecto final, compatible con el toolchain RGBDS de la comunidad.]
]

#seccion("Skills adicionales")

#entrada[
  #punto[Administración avanzada de Linux y NixOS; contribuidor Open Source al ecosistema de Nix.]
  #punto[Cómodo con varios stacks: C embebido / bare metal, Rust, Python, uso de Docker y desarrollo web (HTML, CSS, JavaScript/TypeScript y React).]
  #punto[Idiomas: bilingüe de gallego y español; inglés con nivel B2.]
]
