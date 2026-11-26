#set page(
  paper: "a4",
  margin: (x: 1.35cm, top: 1.05cm, bottom: 1.0cm),
)

#set text(
  font: "Linux Libertine O",
  size: 9.4pt,
  fill: rgb("#111827"),
  lang: "en",
)

#set par(justify: false, leading: 0.42em)
#set list(spacing: 0.28em)

#let primary = rgb("#1e3a8a")
#let secondary = rgb("#475569")
#let accent = rgb("#0369a1")
#let dark = rgb("#0f172a")

#let section(title) = {
  v(0.32em)
  text(font: "Linux Libertine O", fill: primary, weight: "bold", size: 10.6pt, upper(title))
  v(-0.42em)
  line(length: 100%, stroke: 0.75pt + rgb("#cbd5e1"))
  v(0.14em)
}

#let role(title, org, loc, dates) = {
  grid(
    columns: (1fr, auto),
    [
      #text(weight: "bold", fill: dark, size: 9.8pt, title) \
      #text(style: "italic", fill: secondary, org)
    ],
    align(right)[
      #text(weight: "medium", fill: dark, size: 9.3pt, loc) \
      #text(fill: secondary, size: 8.8pt, dates)
    ]
  )
  v(0.1em)
}

#align(center)[
  #text(weight: "bold", size: 18pt, fill: primary)[Emmilly Immaculate Namuganga] \
  #v(0.12em)
  #text(weight: "medium", size: 10.5pt, fill: accent)[Computer Systems and Machine Learning] \
  #v(0.2em)
  #text(size: 8.8pt, fill: secondary)[
    Kigali, Rwanda · Entebbe, Uganda |
    #link("mailto:emmillynamuganga@gmail.com")[emmillynamuganga\@gmail.com] |
    #link("https://maqamylee0.github.io")[maqamylee0.github.io] |
    #link("https://github.com/maqamylee0")[GitHub: maqamylee0] |
    #link("https://www.linkedin.com/in/namuganga-emmilly-immaculate")[LinkedIn]
  ]
]
#v(0.25em)

#text(size: 9.3pt)[
  Master's student in Engineering AI at Carnegie Mellon University (CMU-Africa), graduating May 2027. Lead author of a measurement study of concurrent learned indexes: a C++ testbed across 13 designs and more than 4,000 runs found synchronized node rebuilds that stall inserts and silently drop keys. Also building on-device models, and coursework on tool-calling agents, including execution checks around agent actions. Seeking a research assistant role on systems for agent execution, starting after May 2027.
]

#section("Education")
#role(
  "Master of Science in Engineering Artificial Intelligence",
  "Carnegie Mellon University (CMU-Africa), College of Engineering",
  "Kigali, Rwanda",
  "Aug. 2025 – May 2027"
)
- Coursework: Machine Learning in Production, Agentic AI Systems, Deep Learning, Principles of Software Construction, Data Analytics.

#v(0.12em)
#role(
  "Bachelor of Science in Computer Science",
  "Makerere University",
  "Kampala, Uganda",
  "Sep. 2019 – Feb. 2023"
)
- Graduated top of class.

#section("Research")
#role(
  "Research Intern",
  "Max Planck Institute for Software Systems (MPI-SWS)",
  "Saarbrücken, Germany",
  "Summer 2025 and Summer 2024"
)
- Built a longitudinal C++ testbed for learned index structures: 13 designs, more than 4,000 runs, and multi-threaded inserts, deletes, and queries.
- Found synchronized node rebuilds ("waves of misery") that stall concurrent inserts and cause silent key loss. Lead author, arXiv:2610.33770.
- Cut inserts slower than 100 µs by two orders of magnitude on 400 million keys, using transient buffers and background threads. Reproduced published learned-index results before extending them.

#v(0.16em)
#role(
  "Graduate Research Assistant",
  "Digital Accessibility Lab, Carnegie Mellon University (CMU-Africa)",
  "Kigali, Rwanda",
  "July 2025 – Present"
)
- Fine-tuned on-device models: a Kinyarwanda voice (short clips at 0.88× the speaker's duration; character error 0.67 to 0.17) and real-time recognition of impaired Kinyarwanda and English (27 MB, about 0.38 word error rate).
- Built the frontend of a multilingual job site for people with disabilities.

#v(0.16em)
#role(
  "Openlab Summer Intern",
  "European Organisation for Nuclear Research (CERN)",
  "Geneva, Switzerland",
  "Summer 2023"
)
- Audited CERN's Single Sign-On system and shipped front-end and back-end fixes for accessibility under production constraints.

#section("Selected projects")
#text(weight: "bold", fill: dark)[Agent execution checks] · #text(style: "italic", fill: secondary)[course, Agentic AI Systems]
- Tested a tool-calling agent (Tau2-bench, Model Context Protocol) against indirect prompt injection, tool poisoning, and privilege escalation.
- Added JSON-schema checks on tool arguments, an execution sandbox, and checks that the agent's state matched the allowed outcome.

#v(0.14em)
#text(weight: "bold", fill: dark)[Streaming recommendation service] · #text(style: "italic", fill: secondary)[course, Machine Learning in Production]
- Operated a recommendation service over Apache Kafka for a 1,000,000-user, 20,000-title catalog, with retraining, A/B routing, and Prometheus/Grafana.

#section("Publications")
- *Synchronized Rebuilds: The Hidden Cost of Concurrent Inserts in Learned Indexes ("Waves of Misery").* #text(weight: "bold")[Emmilly Immaculate Namuganga], Laurent Bindschaedler. #link("https://arxiv.org/abs/2610.33770")[arXiv:2610.33770], Oct. 2026.
- *How Widespread Is Accent-Language Confusion in MMS-LID?* #text(weight: "bold")[Emmilly Immaculate Namuganga], Mike Mwanje. AfriLang AI 2026.
- *Comparing Multilingual ASR Models for Low-Resource African Languages.* #text(weight: "bold")[Emmilly Immaculate Namuganga], Ramsey Ithacius Njema, Mike Mwanje, Victor Tolulope Olufemi. WiML Workshop at NeurIPS 2026.
- *WaxalNet: Benchmarking Speech Recognition for Spontaneous Speech in 19 African Languages.* V. T. Olufemi et al., including #text(weight: "bold")[Emmilly Namuganga]. arXiv:2606.02375, 2026.

#section("Skills")
*C++*, Python, concurrent testbeds, benchmarking, Linux. PyTorch, Docker, Apache Kafka, Prometheus, Grafana. Model Context Protocol, tool-calling agents.
