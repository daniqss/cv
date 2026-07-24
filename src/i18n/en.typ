#import "../template.typ": bullet

#let cv_data = (
  meta: (title: "CV — Daniel Queijo Seoane", lang: "en"),
  header: (
    name: "Daniel Queijo Seoane",
    location: "A Coruña, Spain",
    github: "github.com/daniqss",
    phone: "+34 664 57 12 88",
    email: "danielqueijo14@gmail.com",
  ),
  profile: [
    Software developer in the fourth year of a Computer Engineering degree, majoring in
    Computer Engineering (Ingeniería de Computadores), with a strong interest in embedded systems, low-level
    software and Linux for dedicated devices. Winner of the Best Open Source Project award
    at HackUDC 2026. Experience in systems development, bare metal, web and Linux,
    on Open Source projects both as part of a team and solo.
    Looking for my first professional experience to add value on real, challenging projects.
  ],
  sections: (
    (
      title: "Experience",
      entries: (
        (
          title: "Gbeed",
          date: "October 2025 — Present",
          github: "https://github.com/daniqss/gbeed",
          deploy: "https://daniqss.github.io/gbeed",
          body: [
            Game Boy emulator written in Rust using Raylib, aiming to build a DIY console.
            #v(3pt)
            #bullet[
              Designed a modular architecture with a frontend-agnostic emulator core, enabling
              simple headless testing and new frontends: web via WASM, a Linux graphical session
              or an embedded environment such as a Raspberry Pi Zero with a mini display.
            ]
            #bullet[
              Implemented the different subsystems (CPU, pixel processing, audio, timers and interrupts), ensuring
              correct interoperability and synchronization between them.
            ]
            #bullet[
              Built a declarative, reproducible Linux image with NixOS to achieve an immutable, preconfigured
              system aiming for a plug-and-play user experience.
            ]
            #bullet[
              Validated the emulator through automated testing against dozens of custom and community
              test suites, ensuring correct behavior on best-selling games while balancing
              accuracy and performance.
            ]
            #bullet[
              Carried out performance analysis to optimize hotspots and bottlenecks, achieving smooth and stable operation on microcomputers.
            ]
          ],
        ),
        (
          title: "Stepcode",
          date: "February 2026",
          github: "https://github.com/daniqss/stepcode",
          deploy: "https://daniqss.github.io/stepcode",
          body: [
            Static site generator with step-by-step pseudocode execution, designed to build
            educational resources as online books that teach programming by visualizing algorithms
            and program flow.
            #v(3pt)
            #bullet[Designed and implemented the HTML and CSS generator from Markdown, with support for
              project configuration and customization.]
            #bullet[Integrated the generator with the pseudocode interpreter (Vanilla JS) and added
              essential UX features (tree view) and developer features
              (documentation and templates for creating new books).]
            #bullet[Led the CI/CD deployment and the open source project structure: license, issue/PR
              templates, changelogs and Git/GitHub best practices (Conventional Commits, Git Branching).]
          ],
        ),
        (
          title: "Interactive Keyboard",
          date: "March — June 2025",
          body: [
            #bullet[Cross-platform application (Tauri + React), also controllable from a microcontroller
              and deployed as a web app and as a desktop app for Linux and Windows.]
          ],
        ),
      ),
    ),
    (
      title: "Education",
      entries: (
        (
          title: "Universidade da Coruña",
          date: "September 2022 — Present",
          body: [
            Computer Engineering, major in Computer Engineering (Ingeniería de Computadores).
            #v(3pt)
            #bullet[Bare metal development for ARM Cortex-M0, using the manufacturer's SDK and FreeRTOS.]
            #bullet[Digital signal processing: convolution and filtering, frequency-domain
              analysis, digital modulations and channel coding for error detection and correction.]
            #bullet[Performance analysis, optimization with SIMD instructions and implementation of
              parallel algorithms with OpenMPI.]
            #bullet[Language processing with Flex and Bison. LR35902 (Game Boy) assembler as a
              final project, compatible with the community's RGBDS toolchain.]
          ],
        ),
      ),
    ),
    (
      title: "Additional skills",
      entries: (
        (
          title: none,
          date: none,
          body: [
            #bullet[Advanced Linux and NixOS administration; Open Source contributor to the Nix ecosystem.]
            #bullet[Comfortable across several stacks: embedded/bare metal C, Rust, Python, Docker and web development (HTML, CSS, JavaScript/TypeScript and React).]
            #bullet[Languages: native Galician and Spanish speaker; English with B2 level.]
          ],
        ),
      ),
    ),
  ),
)
