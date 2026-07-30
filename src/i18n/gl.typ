#import "../template.typ": bullet

#let cv_data = (
  meta: (title: "CV — Daniel Queijo Seoane", lang: "gl"),
  header: (
    name: "Daniel Queijo Seoane",
    location: "A Coruña, España",
    github: "github.com/daniqss",
    phone: "+34 664 57 12 88",
    email: "danielqueijo14@gmail.com",
  ),
  profile: [
    Desenvolvedor de software cursando cuarto ano de Enxeñaría Informática, mención en
    Enxeñaría de Computadores, con especial interese en sistemas embebidos, software de baixo
    nivel e Linux para dispositivos dedicados. Gañador do premio ao mellor proxecto Open Source
    no HackUDC 2026. Experiencia en desenvolvemento de sistemas, bare metal, web e Linux,
    en proxectos Open Source realizados en equipo e en solitario.
    En busca da miña primeira experiencia laboral para aportar valor en proxectos reais e desafiantes.
  ],
  sections: (
    (
      title: "Experiencia",
      entries: (
        (
          title: "Gbeed",
          date: "Outubro 2025 — Actualidade",
          github: "https://github.com/daniqss/gbeed",
          deploy: "https://daniqss.github.io/gbeed",
          body: [
            Emulador de Game Boy escrito en Rust usando Raylib, co obxectivo de crear unha consola DIY.
            #v(3pt)
            #bullet[
              Deseñei unha arquitectura modular cun núcleo do emulador agnóstico ao frontend, o que
              permite testeo headless sinxelo e engadir novos frontends: web mediante WASM, unha sesión gráfica de
              Linux ou un contorno embebido como unha Raspberry Pi Zero cun minidisplay.
            ]
            #bullet[
              Implementei os diferentes subsistemas (CPU, procesado de píxeles, audio, timers e interrupcións), garantindo
              a súa correcta interoperabilidade e sincronización.
            ]
            #bullet[
              Creei unha imaxe de Linux declarativa e reproducible con NixOS para conseguir un sistema inmutable e preconfigurado
              co obxectivo de ofrecer unha experiencia de usuario plug-and-play.
            ]
            #bullet[
              Validei o emulador de forma automatizada contra decenas de tests propios e da comunidade,
              asegurando o funcionamento dos xogos máis vendidos e buscando un equilibrio axeitado entre
              precisión e rendemento.
            ]
            #bullet[
              Realicei análises de rendemento para optimizar os puntos quentes e os colos de botella, conseguindo fluidez e estabilidade en microcomputadores.
            ]
          ],
        ),
        (
          title: "Stepcode",
          date: "Febreiro 2026",
          github: "https://github.com/daniqss/stepcode",
          deploy: "https://daniqss.github.io/stepcode",
          body: [
            Xerador de sitios web estáticos con execución de pseudocódigo paso a paso, ideado para crear
            recursos educativos en forma de libros online que ensinan a programar visualizando algoritmos
            e o fluxo dos programas.
            #v(3pt)
            #bullet[Deseñei e implementei o xerador de HTML e CSS a partir de Markdown, con soporte para
              configuración e personalización do proxecto.]
            #bullet[Integrei o xerador co intérprete de pseudocódigo (Vanilla JS) e engadín as
              características esenciais de experiencia de usuario (vista de árbore) e de desenvolvemento
              (documentación e templates para crear novos libros).]
            #bullet[Lideirei o despregamento con CI/CD e a estrutura open source: licenza, templates de
              issues/PR, changelogs e boas prácticas Git/GitHub (Conventional Commits, Git Branching).]
          ],
        ),
        (
          title: "Interactive Keyboard",
          date: "Marzo — Xuño 2025",
          body: [
            #bullet[Aplicación multiplataforma (Tauri + React) controlable tamén desde un microcontrolador
              e despregada en formato web e como aplicación para Linux e Windows.]
          ],
        ),
      ),
    ),
    (
      title: "Educación",
      entries: (
        (
          title: "Universidade da Coruña",
          date: "Setembro 2022 — Actualidade",
          body: [
            Enxeñaría Informática, mención en Enxeñaría de Computadores.
            #v(3pt)
            #bullet[Desenvolvemento bare metal para ARM Cortex-M0, usando o SDK do fabricante e FreeRTOS.]
            #bullet[Procesamento dixital de sinal: convolución e filtrado, análise
              en frecuencia, modulacións dixitais e codificación de canle para detección e corrección de erros.]
            #bullet[Análise de rendemento, optimización con instrucións SIMD e implementación de
              algoritmos paralelos con OpenMPI.]
            #bullet[Procesamento de linguaxe con Flex e Bison. Ensamblador de LR35902 (Game Boy) como
              proxecto final, compatible co toolchain RGBDS da comunidade.]
          ],
        ),
      ),
    ),
    (
      title: "Skills adicionais",
      entries: (
        (
          title: none,
          date: none,
          body: [
            #bullet[Administración avanzada de Linux e NixOS; contribuidor Open Source ao ecosistema de Nix.]
            #bullet[Cómodo con varios stacks: C embebido / bare metal, Rust, Python, uso de Docker e desenvolvemento web (HTML, CSS, JavaScript/TypeScript e React).]
            #bullet[Idiomas: bilingüe galego e español; inglés con nivel B2.]
          ],
        ),
      ),
    ),
  ),
)
