#set document(
  title: "CV — Daniel Queijo Seoane",
  author: "Daniel Queijo Seoane",
)
#set page(paper: "a4", margin: (x: 1.7cm, top: 1.4cm, bottom: 1.4cm))
// #set text(font: "DejaVu Sans", size: 9.5pt, lang: "es")
#set text(size: 11pt, lang: "es")
#set par(justify: true, leading: 0.6em)

#let acento = rgb("#1a1a1a")
#let tenue = rgb("#555555")

#let seccion(titulo) = block(sticky: true, {
  v(7pt)
  text(size: 12pt, weight: "bold", tracking: 0.5pt)[#upper(titulo)]
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
  #h(6pt) • #h(6pt) #link("https://github.com/daniqss")[github.com/daniqss]
  #h(6pt) • #h(6pt) +34 664 57 12 88
  #h(6pt) • #h(6pt) #link("mailto:danielqueijo14@gmail.com")[danielqueijo14\@gmail.com]
]

#v(4pt)
Desarrollador de software cursando cuarto año de Ingeniería Informática, mención en
Ingeniería de Computadores. Ganador del premio a mejor proyecto Open Source en el
HackUDC 2026. Experiencia en desarrollo de sistemas, Linux, bare metal y web,
en proyectos Open Source realizados en equipo y en solitario.
En busca de mi primera experiencia laboral para aportar valor en proyectos reales y desafiantes.

#seccion("Experiencia")

// #entrada("Gbeed", "Octubre 2025 — Actualidad")[
//   #punto[Emulador de Game Boy escrito en Rust usando Raylib para gráficos y audio. Trabajo
//     de fin de grado.]
//   #punto[Diseñé una arquitectura modular con un núcleo del emulador agnóstico al frontend,
//     lo que permite testeo headless sencillo y la implementación de nuevos frontends. En desarrollo:
//     una interfaz web vía WASM y otra orientada a consolas DIY sobre Raspberry Pi Zero con Alpine Linux.]
//   #punto[Aseguré el correcto funcionamiento de los juegos más vendidos de la consola y lo
//     validé contra decenas de tests propios y de la comunidad de forma automatizada, buscando un balance adecuado
//     entre precisión y complejidad y rendimiento.]
// ]
//
#entrada(titulo: "Gbeed", fecha: "Octubre 2025 — Actualidad")[
  Emulador de Game Boy escrito en Rust usando Raylib, con el objetivo de crear una consola DIY.
  #v(3pt)
  #punto[
    Implementé los componentes del sistema (CPU LR35902, PPU, timers e interrupciones), garantizando
    su correcta interacción ciclo a ciclo.
  ]
  #punto[
    Diseñé una arquitectura modular con un núcleo del emulador agnóstico al frontend,
    lo que permite testeo headless sencillo y la implementación de nuevos frontends, para usarlo en la web,
    en sesión gráfica de Linux o sobre un entorno embebido como una Raspberry Pi Zero con un minidisplay.
  ]
  #punto[
    Aseguré el correcto funcionamiento de los juegos más vendidos de la consola y lo
    validé contra decenas de tests propios y de la comunidad de forma automatizada, buscando un balance adecuado
    entre precisión y complejidad y rendimiento.
  ]
  #punto[
    En desarrollo una imagen de NixOS que consiga un sistema imperativo inmutable y preconfigurado para garantizar una experiencia de
    usuario user-friendly y plug-and-play.
  ]
]

#entrada(titulo: "Stepcode", fecha: "Febrero 2026")[
  Generador de sitios web estáticos con ejecución de pseudocódigo paso a paso.
  Ideado para crear recursos educativos en forma de libros online orientados a enseñar
  programación, aportando una forma potente de visualizar algoritmos y el flujo de programas.
  #v(3pt)
  #punto[Diseñé e implementé el generador de HTML y CSS a partir de Markdown, incluyendo
    soporte para configuración y personalización del proyecto.]
  #punto[Integré el generador con el intérprete de pseudocódigo hecho en Vanilla JS y añadí
    las características esenciales para la experiencia de usuario (vista lateral de árbol) y de
    desarrollo (documentación y templates para crear nuevos libros fácilmente).]
  #punto[Lideré el despliegue con CI/CD y la estructura open source del proyecto: licencia,
    templates de issues/PR, changelogs y buenas prácticas Git/GitHub (Conventional Commits,
    Git Branching).]
]

#entrada(titulo: "Interactive Keyboard", fecha: "Marzo 2025 — Junio 2025")[
  #punto[
    Desarrollé una aplicación multiplataforma con Tauri y React, usable también a través
    de un microcontrolador.
  ]
  #punto[Desplegué el proyecto en formato web y como aplicación para Linux y Windows.]
]


#seccion("Educación")

#entrada(
  titulo: "Universidade da Coruña",
  fecha: "Septiembre 2022 — Actualidad",
)[
  Ingeniería Informática, mención en Ingeniería de Computadores.
  #v(3pt)
  #punto[
    Desarrollo bare metal para ARM Cortex-M0, usando el SDK del fabricante y FreeRTOS.
  ]
  #punto[
    Procesamiento digital de señal: diseño de filtros, análisis en frecuencia (FFT) y transformadas.
  ]
  #punto[
    Análisis de rendimiento, optimización usando instrucciones SIMD y implementación de algoritmos paralelos con OpenMPI
  ]
  #punto[
    Procesamiento de lenguaje usando Flex y Bison. Ensamblador de LR35902 (Game Boy) como proyecto final, compatible con el toolchain de la comunidad.
  ]
]


#seccion("Skills adicionales")

#entrada[
  #punto[Administración avanzada de Linux y NixOS; contribuidor Open Source al ecosistema de Nix.]
  #punto[Cómodo con varios stacks: C embebido, Rust, desarrollo web (HTML, CSS, JavaScript/TypeScript y React), Python.]
  #punto[Hablante bilingüe de gallego y español. Inglés fluido con nivel B2.]
]

