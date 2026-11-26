---
permalink: /
title: "About Me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---


I am a Master's student in Engineering Artificial Intelligence at **Carnegie Mellon University (CMU-Africa)**. The work below is what I have done so far, across computer systems and machine learning. I am not set on one of those fields.

<div style="background:#eef4fb; border-left:4px solid #2c5f8a; padding:10px 14px; margin:16px 0; border-radius:3px; font-size:0.97em;">
🎓 <strong>I am open to PhD and research roles starting in 2027</strong> in computer systems and in machine learning. Feel free to reach out at <a href="mailto:emmillynamugaga@gmail.com">emmillynamugaga@gmail.com</a>.
</div>

## Education
* **M.S. in Engineering Artificial Intelligence**, Carnegie Mellon University (CMU-Africa)  
  *August 2025 – December 2026 (graduating May 2027)* \| Kigali, Rwanda
  * Core focus: Machine Learning in Production, Agentic AI Systems, Deep Learning, Software Architecture, Data Analytics.
* **B.S. in Computer Science**, Makerere University  
  *September 2019 – February 2023* \| Kampala, Uganda  
  * Graduated top of class.

## What I Have Done

* **Concurrent data systems**: At the Max Planck Institute for Software Systems, built a C++ benchmarking testbed for learned indexes and measured how concurrent inserts fail under multi-threaded workloads.
* **On-device models**: At the Digital Accessibility Lab, CMU-Africa, fine-tuned speech and language models that run on a phone, including a Kinyarwanda voice and real-time recognition of impaired speech.
* **Production ML**: Course projects that ingest streams with Apache Kafka, train and serve models in Docker, and watch them with Prometheus and Grafana.
* **Agents**: Course projects on tool-calling agents, including execution checks, retrieval over documents, and trace-based evaluation.
* **Climate data**: Coursework with NetCDF and raster climate data (xarray, NASA POWER / MERRA-2) and time-series forecasting.

## Research & Professional Experience
* **July 2025 – Present: Graduate AI Research Assistant — Digital Accessibility Lab, CMU-Africa**
  * Building the frontend of a multilingual job site for people with disabilities, held to a strict accessibility standard.
  * Fine-tuning on-device language models that write speech-therapy exercises for an assistive app, in English, with a Kinyarwanda version in progress.
  * Showed that a public on-device Kinyarwanda voice (kinya-flex-tts) rushes short speech, with one- and two-word clips at 0.88× the speaker's duration because training has almost no isolated words, and fine-tuned it so character error on bare test words falls from 0.67 to 0.17.
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
* [**Longitudinal Benchmark for Learned Indexes**](/projects/learnedindex): C++ benchmarking suite for learned indexes under concurrent inserts, deletions, and queries.
* [**Offline On-Device ASR for Impaired Speech (CDLI / CMU-Africa)**](/projects/cdli-assistive-asr): Fine-tuning recognition models for Kinyarwanda and English non-standard speech, quantization, and an offline phone app.
* [**Production Movie Recommendation Streaming Platform**](/projects/mlip-recommender): Streaming recommendation service over Kafka, with retraining, monitoring, and a serving API.
* [**Hardened Tool-Calling Agent with Model Context Protocol (MCP)**](/projects/mcp-agent-security): Checks on a tool-calling agent, including injection tests and an execution sandbox.
* [**Autonomous Multi-Source Financial RAG Agent**](/projects/agentic-rag-centum): An agent that answers from financial documents using both vector search and SQL.
