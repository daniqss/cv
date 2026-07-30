#import "../template.typ": bullet

#let cv_data = (
  meta: (title: "CV — Daniel Queijo Seoane", lang: "es"),
  header: (
    name: "Daniel Queijo Seoane",
    location: "A Coruña, España",
    github: "github.com/daniqss",
    phone: "+34 664 57 12 88",
    email: "danielqueijo14@gmail.com",
  ),
  profile: [
    Desarrollador de software cursando cuarto año de Ingeniería Informática, mención en
    Ingeniería de Computadores, con especial interés en sistemas embebidos, software de bajo
    nivel y Linux para dispositivos dedicados. Ganador del premio a mejor proyecto Open Source
    en el HackUDC 2026. Experiencia en desarrollo de sistemas, bare metal, web y Linux,
    en proyectos Open Source realizados en equipo y en solitario.
    En busca de mi primera experiencia laboral para aportar valor en proyectos reales y desafiantes.
  ],
  sections: (
    (
      title: "Experiencia",
      entries: (
        (
          title: "Gbeed",
          date: "Octubre 2025 — Actualidad",
          github: "https://github.com/daniqss/gbeed",
          deploy: "https://daniqss.github.io/gbeed",
          body: [
            Emulador de Game Boy escrito en Rust usando Raylib, con el objetivo de crear una consola DIY.
            #v(3pt)
            #bullet[
              Diseñé una arquitectura modular con un núcleo del emulador agnóstico al frontend, lo que
              permite testeo headless sencillo y añadir nuevos frontends: web mediante WASM, una sesión gráfica de
              Linux o un entorno embebido como una Raspberry Pi Zero con un minidisplay.
            ]
            #bullet[
              Implementé los diferentes subsistemas (CPU, procesado de píxeles, audio, timers e interrupciones), garantizando
              su correcta interoperabilidad y sincronización.
            ]
            #bullet[
              Creé una imagen de Linux declarativa y reproducible con NixOS para conseguir un sistema inmutable y preconfigurado
              que con el objetivo de ofrecer una experiencia de usuario plug-and-play.
            ]
            #bullet[
              Validé el emulador de forma automatizada contra decenas de tests propios y de la comunidad,
              asegurando el funcionamiento de los juegos más vendidos y buscando un balance adecuado entre
              precisión y rendimiento.
            ]
            #bullet[
              Realicé análisis de rendimiento para optimizar los puntos calientes y cuellos de botella consiguiendo fluidez y estabilidad en microcomputadores.
            ]
          ],
        ),
        (
          title: "Stepcode",
          date: "Febrero 2026",
          github: "https://github.com/daniqss/stepcode",
          deploy: "https://daniqss.github.io/stepcode",
          body: [
            Generador de sitios web estáticos con ejecución de pseudocódigo paso a paso, ideado para crear
            recursos educativos en forma de libros online que enseñan a programar visualizando algoritmos
            y el flujo de los programas.
            #v(3pt)
            #bullet[Diseñé e implementé el generador de HTML y CSS a partir de Markdown, con soporte para
              configuración y personalización del proyecto.]
            #bullet[Integré el generador con el intérprete de pseudocódigo (Vanilla JS) y añadí las
              características esenciales de experiencia de usuario (vista de árbol) y de desarrollo
              (documentación y templates para crear nuevos libros).]
            #bullet[Lideré el despliegue con CI/CD y la estructura open source: licencia, templates de
              issues/PR, changelogs y buenas prácticas Git/GitHub (Conventional Commits, Git Branching).]
          ],
        ),
        (
          title: "Interactive Keyboard",
          date: "Marzo — Junio 2025",
          body: [
            #bullet[Aplicación multiplataforma (Tauri + React) controlable también desde un microcontrolador
              y desplegada en formato web y como aplicación para Linux y Windows.]
          ],
        ),
      ),
    ),
    (
      title: "Educación",
      entries: (
        (
          title: "Universidade da Coruña",
          date: "Septiembre 2022 — Actualidad",
          body: [
            Ingeniería Informática, mención en Ingeniería de Computadores.
            #v(3pt)
            #bullet[Desarrollo bare metal para ARM Cortex-M0, usando el SDK del fabricante y FreeRTOS.]
            #bullet[Procesamiento digital de señal: convolución y filtrado, análisis
              en frecuencia, modulaciones digitales y codificación de canal para detección y corrección de errores.]
            #bullet[Análisis de rendimiento, optimización con instrucciones SIMD e implementación de
              algoritmos paralelos con OpenMPI.]
            #bullet[Procesamiento de lenguaje con Flex y Bison. Ensamblador de LR35902 (Game Boy) como
              proyecto final, compatible con el toolchain RGBDS de la comunidad.]
          ],
        ),
      ),
    ),
    (
      title: "Skills adicionales",
      entries: (
        (
          title: none,
          date: none,
          body: [
            #bullet[Administración avanzada de Linux y NixOS; contribuidor Open Source al ecosistema de Nix.]
            #bullet[Cómodo con varios stacks: C embebido / bare metal, Rust, Python, uso de Docker y desarrollo web (HTML, CSS, JavaScript/TypeScript y React).]
            #bullet[Idiomas: bilingüe gallego y español; inglés con nivel B2.]
          ],
        ),
      ),
    ),
  ),
)
