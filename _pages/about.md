---
permalink: /
title: "About Me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---


I am a **Machine Learning Engineer & AI Systems Engineer** and Master's candidate at **Carnegie Mellon University (CMU-Africa)**, College of Engineering. Currently, I work as a Graduate AI Researcher at the **Digital Accessibility Lab at CMU-Africa**, where I build and deploy offline, on-device AI speech solutions for people with speech and motor disabilities in Rwanda.

My engineering and research focus centers on building and operating **resilient, observable production machine learning systems (MLOps)**, **autonomous agentic AI architectures**, and **high-throughput distributed streaming pipelines**. I am particularly interested in the intersection of intelligent systems, systems-level efficiency, and data infrastructure—bridging the gap between empirical ML algorithms and reliable, real-world deployment.

<div style="background:#eef4fb; border-left:4px solid #2c5f8a; padding:10px 14px; margin:16px 0; border-radius:3px; font-size:0.97em;">
🎓 <strong>I am currently open to PhD opportunities</strong> in machine learning, ML systems, AI for accessibility, and climate-aware AI. I am also open to <strong>ML engineering roles starting early 2027</strong>. Feel free to reach out at <a href="mailto:emmillynamugaga@gmail.com">emmillynamugaga@gmail.com</a>.
</div>

## Education
* **M.S. in Engineering Artificial Intelligence**, Carnegie Mellon University (CMU-Africa)  
  *August 2025 – December 2026 (graduating May 2027)* \| Kigali, Rwanda
  * Core focus: Machine Learning in Production, Agentic AI Systems, Deep Learning, Software Architecture, Data Analytics.
* **B.S. in Computer Science**, Makerere University  
  *September 2019 – February 2023* \| Kampala, Uganda  
  * Graduated top of class.

## What I Build & Research

* **Production ML & MLOps**: Operating end-to-end ML lifecycles with continuous streaming ingestion (Apache Kafka), reproducible data/model pipelines (DVC, MLflow), containerized microservices (Docker Compose), property-based testing (Hypothesis), slice validation, and real-time observability dashboards (Prometheus, Grafana).
* **Agentic AI & LLM Systems**: Architecting tool-calling AI agents with the Model Context Protocol (MCP), designing robust multi-source Retrieval-Augmented Generation (RAG) engines, building agent harnesses with browser tooling (Playwright), and instrumenting distributed trace observability and evaluation (Arize Phoenix, LLM-as-a-Judge).
* **AI Safety, Security & Explainability**: Hardening AI agents against prompt injection and tool poisoning, conducting STPA-based systemic hazard analyses, and auditing complex models using Explainable AI (SHAP, Alibi Explain).
* **Geospatial & Climate Data**: Working with NetCDF and raster datasets (xarray, rioxarray, cartopy), NASA POWER / MERRA-2 climate data, coordinate systems and raster reprojection, spatial heat analysis, and time-series forecasting (Prophet, Theil-Sen trend analysis).
* **Learned Systems & Data Infrastructure**: Designing longitudinal benchmarking frameworks and concurrent C++ testbeds for learned index structures and accelerated inference.

## Research & Professional Experience
* **July 2025 – Present: Graduate AI Research Assistant — Digital Accessibility Lab, CMU-Africa**
  * Built the frontend of Accessibility Corner, a trilingual job site for people with disabilities in Rwanda, to a WCAG 2.2 AAA bar (keyboard, screen reader, 44px targets, 7:1 contrast).
  * Fine-tuning on-device language models that write speech-therapy exercises for an assistive app, in English, with a Kinyarwanda version in progress.
  * Fine-tuning an on-device Kinyarwanda text-to-speech voice so short utterances stay intelligible.
  * Fine-tuned real-time ASR for impaired Kinyarwanda and English in the CDLI hackathon, shipping 27 MB streaming models that transcribe while the person is still speaking (about 0.38 word error rate in each language).
  * **Skills**: PyTorch, Whisper, whisper.cpp, GGML, Sherpa-ONNX, Next.js, Flutter, Dart, Assistive AI, model quantization, edge ML.

* **Summer 2025: Research Intern — Max Planck Institute for Software Systems (MPI-SWS), Germany**
  * Built a longitudinal benchmarking framework for learned index structures to systematically evaluate operational stability (insertions, deletions, queries) under multi-threaded real-world workloads.
  * Developed concurrent C++ harnesses to uncover synchronization bottlenecks and memory overheads in ML-augmented data systems.
  * **Skills**: C++, Python, concurrent programming, learned data structures, experimental design, performance profiling.

* **Summer 2024: Research Intern — Max Planck Institute for Software Systems (MPI-SWS), Germany**
  * Reproduced and empirically validated key experiments from published learned systems research, investigating indexing efficiency tradeoffs.
  * Formulated empirical hypotheses, synthesized literature, and executed comparative experiments across system benchmarks.
  * **Skills**: C++, Python, benchmarking frameworks, empirical research validation.

* **Summer 2023: Openlab Summer Intern — CERN, Geneva, Switzerland**
  * Conducted an extensive accessibility audit and usability evaluation on CERN’s Single Sign-On (SSO) authentication system used by thousands of researchers worldwide.
  * Implemented targeted front-end and backend fixes to eliminate accessibility barriers, ensuring strict WCAG compliance.
  * **Skills**: Python, React, Spring, GitLab, human-centered design, assistive technologies, accessibility testing.

## Recent Publications & Preprints
* **How Widespread Is Accent-Language Confusion in MMS-LID? A Broad Sweep Across African Accents in AfriSpeech-200**  
  **Emmilly Immaculate Namuganga**, Mike Mwanje.  
  *AfriLang AI Conference 2026*, Dec. 2026. [[Details](/publication/2026-12-10-afrilang-mms-lid)]
* **Synchronized Rebuilds: The Hidden Cost of Concurrent Inserts in Learned Indexes ("Waves of Misery")**  
  **Emmilly Immaculate Namuganga**, Laurent Bindschaedler.  
  *arXiv:2610.33770*, Oct. 2026. [[arXiv](https://arxiv.org/abs/2610.33770)] [[PDF](https://arxiv.org/pdf/2610.33770)]
* **Comparing Multilingual ASR Models for Low-Resource African Languages: What Works, and When**  
  **Emmilly Immaculate Namuganga**, Ramsey Ithacius Njema, Mike Mwanje, Victor Tolulope Olufemi.  
  *Women in Machine Learning (WiML) Workshop at NeurIPS 2026 (Poster Presentation)*, Dec. 2026. [[OpenReview](https://openreview.net/forum?id=iZx24ySsjJ)]
* **WaxalNet: Benchmarking and Adapting Speech Recognition for Spontaneous Speech in 19 African Languages**  
  Victor Tolulope Olufemi, Oreoluwa Babatunde, ..., **Emmilly Namuganga**, ..., Prasenjit Mitra.  
  *arXiv:2606.02375*, Jun. 2026. [[arXiv](https://arxiv.org/abs/2606.02375)]

## Featured Projects & Labs
* [**Offline On-Device ASR for Impaired Speech (CDLI / CMU-Africa)**](/projects/cdli-assistive-asr): Fine-tuning Whisper and Zipformer models for Kinyarwanda and English non-standard speech, 4-bit quantization, and cross-platform Flutter assistive communication app.
* [**Production Movie Recommendation Streaming Platform**](/projects/mlip-recommender): Scalable streaming recommendation engine serving 1M users / 20k movies with Kafka, ALS Matrix Factorization, Flask microservices, Prometheus/Grafana monitoring, and automated retraining.
* [**Autonomous Multi-Source Financial RAG Agent**](/projects/agentic-rag-centum): Enterprise financial reasoning agent integrating ChromaDB semantic search with deterministic SQL execution for multi-document financial reporting.
* [**Hardened Tool-Calling Agent with Model Context Protocol (MCP)**](/projects/mcp-agent-security): Security analysis, adversarial injection testing, and defensive guardrail engineering for tool-augmented AI agents.
* [**Longitudinal Benchmark for Learned Indexes**](/projects/learnedindex): High-concurrency C++ benchmarking suite evaluating learned data structures under dynamic operational workloads.
