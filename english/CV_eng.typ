#set document(title: "Curriculum Vitae - Juan Cañada Carril")
#set page(
  paper: "a4",
  margin: 0cm, // Quitamos márgenes globales para controlar los fondos
)
#set text(font: ("Arial"), size: 9pt, lang: "es")
#set par(leading: 0.4em)

// --- COLORES ---
#let dark-green = rgb("#0f2e53d3")
#let light-gray = rgb("#F5F5F5")

// --- FONDO DE LA BARRA LATERAL ---
#place(
  top + left,
  rect(width: 32%, height: 100%, fill: light-gray),
)

// --- BANDA HORIZONTAL SUPERIOR ---
#rect(width: 100%, fill: dark-green, inset: (top: 25pt, bottom: 20pt))[
  #align(center)[
    #text(fill: white, size: 24pt, weight: "bold")[Juan Cañada] \
    #v(2pt)
    #text(fill: white, size: 11pt)[AI & Data Engineer | PhD Student]
  ]
]

// --- CONTENIDO PRINCIPAL ---
#grid(
  columns: (32%, 68%),

  // ================= COLUMNA IZQUIERDA =================
  [
    #pad(left: 20pt, right: 15pt, top: 1pt, bottom: 15pt)[

      // Foto de perfil referenciada a la carpeta PIC
      #align(center)[
        #box(clip: true, radius: 50%, width: 105pt, height: 105pt)[
          #image("PIC/yo3.jpeg", width: 100%, fit: "cover")
        ]
      ]

      #let side-section(title) = {
        v(5pt)
        text(size: 10.5pt, weight: "bold", fill: dark-green)[#title]
        v(-5pt)
        line(length: 100%, stroke: 1pt + dark-green)
        v(5pt)
      }


      #side-section("ABOUT ME")
      #par(
        justify: true,
      )[My areas of interest are Computer Vision, NLP, GenAI and Geoinformation analysis. I am currently investigating how to apply LLMs to Goespatial information processing.]

      #box(width: 10pt, baseline: 20%)[#image("PIC/mail.svg")]
      #link("mailto:juan.canada.carril@gmail.com")[juan.canada.carril\@gmail.com]\
      #box(width: 10pt, baseline: 20%)[#image("PIC/phone.svg")]
      +34 655038791 \
      #box(width: 10pt, baseline: 20%)[#image("PIC/place.svg")] Gijón, España

      #side-section("LANGUAGES")
      *Spanish* - Native \
      *English* - Level C1 \
      *Italian* - Level B1

      #side-section("ACTIVITIES")
      *Head of Cinema Club* \
      _Col. Mayor Chaminade, 2019-20_ \
      #v(1pt)
      *Violoncello* \
      _Cons. de Música (Gijón), 2008-14_ \

      #side-section("SCOLARSHIPS")
      *Santander Mobility* \
      _Santander Bank, 2023_ \
      #v(1pt)
      *Colaboration Scolarship Program* \
      _Ministry of Education, 2022_

      #side-section("CERTIFICATES")
      *English Advanced C1* \
      _Cambridge, 2022_ \
      #v(1pt)
      *Deep Learning and A.I. with Keras and Tensorflow* \
      _Udemy, 2022_

      #side-section("TECH STACK")
      *Advanced:* Python, Docker, QGIS, Git, Matlab, LaTeX, OpenWebUI, ComfyUI \
      *Intermediate:* R, Java, JS, HTML, SQL, Postman, C,  Qdrant\
    ]
  ],

  // ================= COLUMNA DERECHA =================
  [
    #pad(left: 20pt, right: 20pt, top: 10pt, bottom: 15pt)[

      #let main-section(title) = {
        text(size: 14pt, weight: "bold", fill: dark-green)[#title]
        v(1pt)
        line(length: 100%, stroke: 1.5pt + dark-green)
        v(1pt)
      }

      #let cv-item(year, title, subtitle, desc: none, url: none) = {
        grid(
          columns: (54pt, 1fr),
          gutter: 5pt,
          align(left)[#text(weight: "bold", fill: dark-green)[#year]],
          [
            #text(weight: "bold")[#title]
            #if url != none [ #link(url)[#text(fill: dark-green, weight: "bold")[ ↗]] ]
            #if subtitle != none [ | _ #subtitle _ ]
            #if desc != none [ \ #desc ]
          ],
        )
        v(1pt)
      }

      #main-section("EDUCATION")

      #cv-item(
        "2024 - Today",
        "PhD in Computer Science",
        "Universidad de Oviedo",
        desc: "Thesis title: Fusion and interpretation of geoespatial information through large language models.",
      )

      #cv-item(
        "2023 - 2025",
        "MsC in ICT for Internet and Multimedia",
        "Università degli Studi di Padova",
        desc: "Dual Degree Program",
      )

      #cv-item(
        "2022 - 2024",
        "MSc in Telecommunication Engineering",
        "Universidad Politécnica de Madrid",
        desc: "Specialization in Machine Learning",
      )

      #cv-item(
        "2018 - 2022",
        "Telecommunication Engineering",
        "Universidad Politécnica de Madrid",
        desc: "Audiovisual Systems Specialization. Best Academic Record.",
      )

      #main-section("EXPERIENCE")
      #cv-item("2024 - Today", "AI & Data Engineer", "CTIC Technology Center", desc: "PhD Position")
      #cv-item(
        "2021 - 2023",
        "Research intern",
        "Image Processing Group, UPM",
        desc: "2 projects about medical image processing (Madrid)",
      )
      #cv-item("2020 - Today", "Private tutor", "Maths and Physics", desc: "High school students")

      #main-section("PUBLICATIONS")

      #cv-item(
        "2026",
        "A Multimodal Conversational Assistant for the Characterization of Agricultural Plots from Geospatial Open Data",
        "2025 4th International Conference on Geographic Information and Remote Sensing Technology",
        desc: "Juan Cañada et al. DOI: 10.1109/GIRST67753.2025.11382141",
        url: "https://doi.org/10.1109/GIRST67753.2025.11382141",
      )
      #cv-item(
        "2024",
        "Innovative Solutions for Respiratory Rate Assessment: Computer Vision-based Estimators for Young Children",
        "Preprint",
        desc: "Juan Cañada et al. DOI: 10.36227/techrxiv.23676408.v1",
        url: "https://doi.org/10.36227/techrxiv.23676408.v1",
      )
      #cv-item(
        "2022",
        "Assistance to lung cancer detection on histological images using Convolutional Neural Networks",
        "IEEE EHB",
        desc: "2022 E-Health and Bioengineering Conference (EHB), Iasi, Romania. Juan Cañada et al. DOI: 10.1109/EHB55594.2022.9991400",
        url: "https://doi.org/10.1109/EHB55594.2022.9991400",
      )

      #main-section("AWARDS & ACHIEVEMENTS")

      #cv-item(
        "2023",
        "Future of Telecommunications Award",
        "COITT",
        desc: "Second prize on Audiovisual Systems category",
        url: "https://www.upm.es/UPM/SalaPrensa/Noticias?id=9293f0acf6c27810VgnVCM10000009c7648a____&fmt=detail&prefmt=articulo",
      )
      #cv-item(
        "2022",
        "Best Academic Record in Bachelor Degree",
        "ETSIT-Empresa RTVE",
        desc: "Audiovisual Systems Specialization",
      )
      #cv-item(
        "2022, 2023",
        "E-nnova Health Award",
        "Diario Médico and Correo Farmacéutico",
        desc: "Categoría: Big Data e I.A. (Proyectos TAPCP y VIBRA)",
        url: "https://www.comunidad.madrid/noticias/2023/12/01/proyecto-hospital-12-octubre-universidad-politecnica-premio-ennova-salud-2023-categoria-big-data-e-inteligencia-artificial",
      )
      #cv-item("2023", "Ángel Álvarez Award", "Fundetel", desc: "Awards for Mobility Students 2023/24")

      #cv-item(
        "2022",
        "VII Digital Economy Content Creation Contest",
        "Cátedras Telefónica",
        desc: "Accesit award",
      )
      #cv-item("2018", "Graduating with Honors in High School", "Universidad Laboral, Gijón")

      // --- PIE DE PÁGINA DE LA COLUMNA DERECHA ---
      #v(1fr)
      #line(length: 100%, stroke: 0.5pt + gray)
      #v(2pt)
      #align(right)[
        #text(size: 8.5pt, fill: gray.darken(30%))[
          *ORCID:* #link("https://orcid.org/0009-0009-7223-9815")[#box(width: 10pt, baseline: 20%)[#image("PIC/orcid-svgrepo-com.svg")] 0009-0009-7223-9815] #h(14pt)
          *Portfolio:* #link("https://juancc-00.github.io/Portfolio/")[Juan Cañada↗] #h(16pt)
          *LinkedIn:* #link("www.linkedin.com/in/juan-cc")[Juan Cañada #box(width: 10pt, baseline: 20%)[#image("PIC/LI-logo.svg")]]
        ]
      ]
    ]
  ],
)
