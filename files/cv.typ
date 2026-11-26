#set page(
  paper: "a4",
  margin: (x: 1.4cm, top: 1.25cm, bottom: 1.25cm),
)

#set text(
  font: "Linux Libertine O",
  size: 9.6pt,
  fill: rgb("#111827"),
  lang: "en",
)

#set par(justify: false, leading: 0.48em)

#let primary = rgb("#1e3a8a")      // Deep navy
#let secondary = rgb("#475569")    // Slate grey
#let accent = rgb("#0369a1")       // Refined teal blue
#let dark = rgb("#0f172a")

#let section(title) = {
  v(0.48em)
  text(font: "Linux Libertine O", fill: primary, weight: "bold", size: 10.8pt, upper(title))
  v(-0.4em)
  line(length: 100%, stroke: 0.75pt + rgb("#cbd5e1"))
  v(0.22em)
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
  v(0.12em)
}

// Header
#align(center)[
  #text(weight: "bold", size: 18pt, fill: primary)[Emmilly Immaculate Namuganga] \
  #v(0.12em)
  #text(weight: "medium", size: 10.5pt, fill: accent)[Machine Learning & AI Systems Engineer · Speech & Edge AI Researcher] \
  #v(0.2em)
  #text(size: 8.8pt, fill: secondary)[
    Kigali, Rwanda · Entebbe, Uganda | 
    #link("mailto:emmillynamuganga@gmail.com")[emmillynamuganga\@gmail.com] |
    #link("https://maqamylee0.github.io")[maqamylee0.github.io] | 
    #link("https://github.com/maqamylee0")[GitHub: maqamylee0] | 
    #link("https://www.linkedin.com/in/namuganga-emmilly-immaculate")[LinkedIn]
  ]
]
#v(0.2em)

// Profile
#text(size: 9.3pt)[
  *Master’s student in Engineering AI at Carnegie Mellon University (CMU-Africa)* with research experience in machine learning for systems, and in fine-tuning and quantizing ASR models for low-resource languages for on-device deployment, plus hands-on coursework in production ML (MLOps) and agentic LLM systems. Built course projects with Apache Kafka, Docker, MLflow/DVC, Prometheus/Grafana, MCP, and RAG.
]

// Education
#section("Education")
#role(
  "Master of Science in Engineering Artificial Intelligence",
  "Carnegie Mellon University (CMU-Africa), College of Engineering",
  "Kigali, Rwanda",
  "Aug. 2025 – Dec. 2026 (graduating May 2027)"
)
- *Core Coursework*: Machine Learning in Production (17-645), Agentic AI Systems, Deep Learning, Machine Learning for Engineers, Data Analytics.

#v(0.14em)
#role(
  "Bachelor of Science in Computer Science",
  "Makerere University",
  "Kampala, Uganda",
  "Sep. 2019 – Feb. 2023"
)
- Graduated *Top of Graduating Class*. Undergrad thesis: *Disease Detection in Poultry Using Machine Learning & Computer Vision*.

// Technical Skills
#section("Technical Skills")
#grid(
  columns: (auto, 1fr),
  gutter: (1em, 0.65em),
  [*MLOps & Infrastructure:*], [Docker, Docker Compose, DVC, MLflow, Weights & Biases (W&B), Apache Kafka (kafka-python, confluent-kafka, kcat), Prometheus, Grafana, Node Exporter, GitHub Actions (self-hosted runners), Gunicorn, pytest / pytest-cov, mypy, Ruff.],
  [*Agentic & LLM Systems:*], [Model Context Protocol (MCP), Tau2-bench, mini-swe-agent, Playwright, Arize Phoenix, OpenTelemetry / OpenInference, LiteLLM, LLM-as-a-Judge, LangChain, RAG, ChromaDB, OpenAI / Groq / Gemini / Claude APIs, JSON Schema.],
  [*Speech AI & Edge ML:*], [Whisper, whisper.cpp, GGML 4-bit Quantization, Omnilingual ASR, Sherpa-ONNX / Zipformer, KenLM, MMS, Hugging Face Transformers, Android NDK.],
  [*Core ML & Explainability:*], [PyTorch, TensorFlow / Keras, Scikit-learn, Collaborative Filtering (ALS, SVD), Hypothesis (Property Testing), SHAP, Alibi Explain, Grad-CAM, Pandas, NumPy.],
  [*Languages & Frameworks:*], [Python, C++, TypeScript / JavaScript, Dart (Flutter), SQL (SQLite), Bash, Flask, Django, React, Pydantic, REST APIs, Git / GitHub.]
)

// Professional & Research Experience
#section("Professional & Research Experience")

#role(
  "Graduate AI Research Assistant",
  "Digital Accessibility Lab, Carnegie Mellon University (CMU-Africa)",
  "Kigali, Rwanda",
  "July 2025 – Present"
)
- Building the frontend of a multilingual job site for people with disabilities, held to a strict accessibility standard.
- Fine-tuning on-device language models that write speech-therapy exercises for an assistive app, in English, with a Kinyarwanda version in progress.
- Showed that a public on-device Kinyarwanda voice (kinya-flex-tts) rushes short speech, with one- and two-word clips at 0.88× the speaker's duration because training has almost no isolated words, and fine-tuned it so character error on bare test words falls from 0.67 to 0.17.
- Fine-tuned real-time ASR for impaired Kinyarwanda and English in the CDLI hackathon, shipping 27 MB streaming models that transcribe while the person is still speaking (about 0.38 word error rate in each language).

#v(0.18em)
#role(
  "Research Intern",
  "Max Planck Institute for Software Systems (MPI-SWS)",
  "Saarbrücken, Germany",
  "Summer 2025 & Summer 2024"
)
- Built a longitudinal benchmarking testbed for learned index structures across 13 designs and >4,000 runs, uncovering synchronized node rebuilds ("waves of misery") that stall concurrent inserts and cause silent key loss (lead-author arXiv:2610.33770).
- Implemented concurrent C++ testbeds with transient buffers and background threads, cutting high-latency inserts (>100µs) by 2 orders of magnitude on 400M keys. Reproduced and validated empirical findings from published learned data systems literature.

#v(0.18em)
#role(
  "Openlab Summer Intern",
  "European Organisation for Nuclear Research (CERN)",
  "Geneva, Switzerland",
  "Summer 2023"
)
- Conducted user-centered accessibility audits of CERN's Single Sign-On (SSO) authentication system; implemented production code fixes in React and Spring backend ensuring WCAG international accessibility compliance for thousands of researchers.

// Machine Learning & AI Engineering Projects
#pagebreak(weak: true)
#section("Production ML & AI Systems Projects")

#text(weight: "bold", fill: dark)[Production Movie Recommendation Streaming Platform] · #text(style: "italic", fill: secondary)[CMU MLIP (17-645) Capstone]
- Built, deployed, and operated an end-to-end movie recommendation microservice serving *1,000,000 users* across *20,000 titles*.
- Ingested millions of real-time interaction logs from Apache Kafka; trained ALS Matrix Factorization and Content-Based models with an LLM-assisted cold-start keyword pipeline.
- Deployed a zero-downtime Flask/WSGI serving architecture with automated retraining, A/B routing, property-based testing with *Hypothesis*, chaos drills, and real-time *Prometheus/Grafana* telemetry under a ≥70% production availability SLA.

#v(0.15em)
#text(weight: "bold", fill: dark)[Autonomous Enterprise Financial RAG Agent] · #text(style: "italic", fill: secondary)[Agentic AI Systems]
- Designed an autonomous multi-source RAG agent reasoning over annual reports, AGM minutes, and balance sheets of Centum PLC.
- Integrated dense vector retrieval (*ChromaDB*) with deterministic relational SQL querying (*SQLite*) using OpenAI tool calling, preventing numerical hallucinations and handling dense financial tables and multi-hop queries.

#v(0.15em)
#text(weight: "bold", fill: dark)[Tool-Calling Agent Security & Defensive Hardening] · #text(style: "italic", fill: secondary)[Model Context Protocol (MCP)]
- Audited and hardened tool-calling airline service agents (Tau2-bench) against indirect prompt injection, tool poisoning, and privilege escalation; engineered JSON schema parameter validation, execution sandboxes, and deterministic safety invariants.

#v(0.15em)
#text(weight: "bold", fill: dark)[Clinical Explainable AI (XAI) & Stakeholder Model Auditing] · #text(style: "italic", fill: secondary)[RetinaScreen Project]
- Built a multi-stakeholder interpretability suite for a multimodal diabetic retinopathy diagnostic system (ResNet50 + Random Forest).
- Implemented global auditing (*TreeSHAP*, Grad-CAM heatmaps across 367 test patients, gender-flip counterfactuals) and frontline nurse/patient decision support with local SHAP attribution bars, calibrated confidence, and readability metrics.

#v(0.15em)
#text(weight: "bold", fill: dark)[Production Agent Tracing, Observability & LLM-as-a-Judge] · #text(style: "italic", fill: secondary)[Arize Phoenix & Groq]
- Instrumented agent execution pipelines with *Arize Phoenix v21* distributed tracing; analyzed token and latency bottlenecks; built automated *Groq LLM-as-a-Judge* pipelines evaluating agent trajectory correctness and factual faithfulness.

// Publications
#section("Publications & Preprints")
#set list(tight: false, spacing: 1em)

- *How Widespread Is Accent-Language Confusion in MMS-LID? A Broad Sweep Across African Accents in AfriSpeech-200* \
  #text(weight: "bold")[Emmilly Immaculate Namuganga], Mike Mwanje. *AfriLang AI Conference 2026* (Dec. 10, 2026).
- *Comparing Multilingual ASR Models for Low-Resource African Languages: What Works, and When* \
  #text(weight: "bold")[Emmilly Immaculate Namuganga], Ramsey Ithacius Njema, Mike Mwanje, Victor Tolulope Olufemi. \
  *Women in Machine Learning (WiML) Workshop at NeurIPS 2026* (Poster Presentation, Dec. 2026). #link("https://openreview.net/forum?id=iZx24ySsjJ")[OpenReview Forum]
- *Synchronized Rebuilds: The Hidden Cost of Concurrent Inserts in Learned Indexes ("Waves of Misery")* \
  #text(weight: "bold")[Emmilly Immaculate Namuganga], Laurent Bindschaedler. #link("https://arxiv.org/abs/2610.33770")[arXiv:2610.33770], Oct. 2026.
- *WaxalNet: Benchmarking and Adapting Speech Recognition for Spontaneous Speech in 19 African Languages* \
  V. T. Olufemi, O. Babatunde, ..., #text(weight: "bold")[Emmilly Namuganga], ..., P. Mitra. #link("https://arxiv.org/abs/2606.02375")[arXiv:2606.02375], June 2026.

// Leadership
#section("Service & Leadership")
#set list(spacing: 0.6em)
- *President, CMU-Africa Book Club* (2026 – Present): Lead and facilitate recurring book discussions, roundtables, and campus reading initiatives; oversee club operations, speaker sessions, and member engagement.
- *Reviewer, Deep Learning Indaba 2026*: Evaluated submissions and gave constructive feedback for Africa's largest ML and AI gathering.
- *Admissions Committee Member, Women Techsters Fellowship* (2025): Reviewed and evaluated applicants for a fellowship advancing women in technology across Africa.
- *Volunteer Facilitator, Educating The Children Foundation* (2022): Taught and mentored young women in web development (HTML, CSS, JavaScript, Node.js) at The Innovation Village, Kampala.
