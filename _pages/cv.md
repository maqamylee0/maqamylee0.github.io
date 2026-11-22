---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

## Professional Summary
Machine Learning & AI Systems Engineer with a deep focus on **Production ML (MLOps)**, **Agentic AI Systems**, and **Distributed Streaming Architectures**. Experienced in engineering end-to-end ML lifecycles: from real-time data ingestion (Kafka) and reproducible pipelines (DVC, MLflow), to containerized microservice deployments (Docker, Compose), continuous testing (slice testing, Hypothesis, CI/CD), real-time observability (Prometheus, Grafana), and robust LLM agent architectures (MCP, tool-calling, RAG, Arize Phoenix tracing, and defensive security).

Education
======
* **M.S. in Information Technology / Artificial Intelligence**, Carnegie Mellon University (CMU-Africa), College of Engineering, *Aug. 2024 – May 2026*
  * *Core Coursework*: Machine Learning in Production (17-645), Agentic AI Systems, Deep Learning, Principles of Software Construction, Data Analytics.
* **B.S. in Computer Science**, Makerere University, *Sep. 2019 – Feb. 2023*
  * Graduated top of class.

Technical Skills
======
* **MLOps & Production Engineering**: Docker, Docker Compose, DVC (Data Version Control), MLflow, CI/CD (GitHub Actions, Self-hosted Runners), Weights & Biases (W&B), Apache Kafka, Prometheus, Grafana, Node Exporter, Zero-Downtime Deployment, A/B Testing, Model Drift Detection.
* **Agentic AI & LLMs**: Model Context Protocol (MCP), Autonomous Tool-Calling Agents, Agent Harnesses, LangChain, LlamaIndex, Retrieval-Augmented Generation (RAG), Arize Phoenix (Agent Tracing & Observability), Groq / OpenAI / Anthropic APIs, Prompt Engineering, Agent Security & Guardrails, LLM-as-a-Judge.
* **Machine Learning & Deep Learning**: PyTorch, Scikit-learn, Collaborative Filtering (ALS, SVD), Content-Based Recommendation, Model Slicing & Continuous Testing, Explainable AI (SHAP, Alibi Explain), Property-Based Testing (Hypothesis).
* **Data & Storage**: Apache Kafka, Pandas, NumPy, SQLite, ChromaDB (Vector Search), Data Pipelines & Schema Enforcement.
* **Software Engineering & Languages**: Python, C++, TypeScript/JavaScript, Bash, REST APIs, WSGI/Flask/FastAPI, Linux Systems Programming, Git/GitHub.

Machine Learning & AI Engineering Experience
======

### Flagship Production Systems

#### Offline On-Device ASR & Assistive Communication Platform for Impaired Speech
*Digital Accessibility Lab, CMU-Africa & Centre for Digital Language Inclusion (CDLI)*
* **What I Implemented**:
  * Designed, fine-tuned, and deployed fully offline, on-device Automatic Speech Recognition (ASR) pipelines for individuals with speech and motor impairments (dysarthria, dysphonia, cerebral palsy, Parkinson's disease, stroke, and stuttering) in Rwanda.
  * Fine-tuned bilingual ASR foundation models (Whisper-small, Whisper Large-v3, Omnilingual CTC-300M, and streaming Zipformer) on CDLI non-standard speech datasets (61.7 hours of impaired Kinyarwanda across 61 speakers, 44.4 hours of non-standard Rwandan English across 59 speakers), initializing from a combined 3,490+ hour base model (Common Voice + AfriVoice).
  * Achieved state-of-the-art **0.374 Word Error Rate (WER)** on Kinyarwanda impaired speech (E18 model) and 0.266 WER on English, establishing leading benchmarks on Bantu non-standard speech.
  * Quantized fine-tuned Whisper architectures to 4-bit (`Q4_K`) precision using **whisper.cpp / GGML**, compressing model size to **145 MB** and enabling fast on-device inference (~9s processing for 19s sentence) on edge Android devices without cloud dependencies.
  * Built an end-to-end cross-platform **Flutter** assistive communication application with accessible UI (large touch targets, minimal cognitive load), domain-specific Kinyarwanda language model spelling correction, and text-to-speech audio synthesis for clear communication with healthcare workers and vendors.
  * Architected a distributed evaluation and scoring portal (`recording_portal`) to benchmark, transcribe, and rank 12 candidate field models against authentic participant recordings.
* **Technologies & Tools Used**: PyTorch, Whisper (`whisper.cpp`, GGML), Omnilingual ASR, Sherpa-ONNX / Zipformer, Hugging Face, Flutter, Dart, Python, Android NDK, SQLite.

#### End-to-End Production Movie Recommendation Streaming Platform
*CMU Machine Learning in Production (17-645 Capstone Project) \| Team Outliers*
* **What I Implemented**:
  * Designed, deployed, and operated a high-throughput, low-latency movie recommendation service serving over **1,000,000 users** across a **20,000-movie catalog** under strict production availability SLAs (≥70% uptime guaranteed).
  * Built real-time stream ingestion consuming millions of user interaction events from Apache Kafka (`movielog10`), feeding streaming cache buffers and automated data cleaning pipelines.
  * Developed and benchmarked candidate recommendation models: Alternating Least Squares (ALS) Matrix Factorization, Content-Based Filtering, and Popularity baselines; engineered an LLM-assisted cold-start pipeline extracting latent genre/keyword representations for new items and users.
  * Architected a modular REST serving microservice (WSGI/Flask) with zero-downtime container cutover, automated weekly retraining pipelines, dynamic A/B test routing, and automated online evaluation tracking click-through rates and recommendation diversity.
  * Enforced rigorous software quality using contract testing, component testing, and property-based testing with **Hypothesis**; executed simulated production incident response drills (unclean shutdowns, stream disruptions, data corruption) with full post-mortem analysis.
* **Technologies & Tools Used**: Python, Apache Kafka, Scikit-learn, PyTorch, Docker, Docker Compose, GitHub Actions, Prometheus, Grafana, Hypothesis, pytest, REST API.

#### Autonomous Multi-Source Financial RAG Agent
*Agentic AI Systems \| Centum PLC Financial Reasoning Agent*
* **What I Implemented**:
  * Built an enterprise-grade agentic Retrieval-Augmented Generation (RAG) system capable of synthesizing and reasoning across heterogeneous corporate disclosures: annual integrated financial reports, AGM minutes, investor presentation decks, and balance sheets for Centum PLC (East Africa's largest listed investment company).
  * Engineered a multi-stage retrieval architecture combining dense semantic vector search via **ChromaDB** with structured relational querying against a financial database (`centum_financials.db`), eliminating hallucination on numerical figures.
  * Implemented autonomous agent tool-calling patterns using OpenAI function calling, dynamically routing queries between semantic document retrieval and deterministic SQL execution.
  * Designed specialized chunking and parsing strategies for dense financial tables, balance sheet schedules, and transcript Q&A sessions; benchmarked retrieval precision and factual faithfulness.
* **Technologies & Tools Used**: Python, LangChain, ChromaDB, OpenAI GPT-4o / GPT-3.5, SQLite, PyPDF2, pdfplumber, Pandas.

---

### Practical ML & AI Systems Labs (CMU School of Computer Science / Engineering)

#### 1. Agent Security, MCP Tool Calling & Defensive Hardening (Lab 7 / Assignment 4)
* **What I Implemented**:
  * Audited and hardened a tool-calling AI agent using the **Model Context Protocol (MCP)** acting as an airline customer service agent (adapted from the Tau2-bench benchmark).
  * Engineered and executed adversarial attack vectors including indirect prompt injection via customer inputs, tool poisoning, privilege escalation, and unauthorized state mutation.
  * Developed robust defensive hardening layers: strict input sanitization, JSON schema parameter validation, execution sandboxing, deterministic state verification, and post-execution guardrails to guarantee safe tool interactions.
* **Technologies Used**: Model Context Protocol (MCP), Python, TypeScript, Tau2-bench, JSON Schema, LLM Security & Guardrails.

#### 2. Production Agent Tracing, Observability & LLM-as-a-Judge (Lab 11)
* **What I Implemented**:
  * Integrated distributed telemetry and execution tracing for autonomous AI agents using **Arize Phoenix (v21)** and OpenInference.
  * Replayed and analyzed production agent traces, visualizing execution trees, tool call latencies, agent token consumption, and multi-turn failure points.
  * Engineered automated evaluation pipelines utilizing **Groq-accelerated LLMs as evaluators/judges**, benchmarking agent trajectory correctness, tool parameter fidelity, and factual grounding against ground-truth benchmarks.
* **Technologies Used**: Arize Phoenix, OpenInference, Groq API, OpenTelemetry, LLM-as-a-Judge, Python.

#### 3. Real-Time ML Observability, Telemetry & Data Drift Monitoring (Lab 8)
* **What I Implemented**:
  * Built an end-to-end telemetry and monitoring pipeline collecting live prediction events from Apache Kafka into **Prometheus** via custom metric exporters (`kafka-monitoring.py`).
  * Designed real-time **Grafana** production dashboards visualizing request throughput, p50/p95/p99 latency, system resource utilization (via Node Exporter), error rates, and live prediction distributions.
  * Implemented automated detection for statistical data drift and concept drift on streaming feature inputs, establishing alerting thresholds for proactive model retraining.
* **Technologies Used**: Prometheus, Grafana, Node Exporter, Apache Kafka, Python, Docker Compose.

#### 4. Data & Model Versioning and Experiment Tracking (Lab 9: DVC + MLflow)
* **What I Implemented**:
  * Architected a fully reproducible machine learning lifecycle using **DVC (Data Version Control)** to track datasets, feature pipelines, and trained model weights alongside Git commits.
  * Integrated **MLflow** for hyperparameter tracking, metric logging across training iterations, and managing the model lifecycle through the MLflow Model Registry (staging, production, archiving).
  * Built modular reproducible DVC pipeline stages (`dvc.yaml`, `dvc.lock`) ensuring deterministic artifact generation and cache sharing across teams.
* **Technologies Used**: DVC, MLflow, Scikit-learn, SQLite backend, Git, Python.

#### 5. Model Interpretability & Explainability with SHAP & Alibi Explain (Lab 10)
* **What I Implemented**:
  * Applied Explainable AI (XAI) frameworks to audit complex black-box machine learning models on tabular and computer vision datasets.
  * Computed game-theoretic feature attributions using **TreeSHAP** and **KernelSHAP** for both global model behavior and local individual prediction explanations.
  * Implemented rule-based **Anchor explanations** (identifying minimal feature subsets sufficient for a prediction) and **Counterfactual instances** via **Alibi Explain** to diagnose model biases and edge-case vulnerabilities.
* **Technologies Used**: SHAP, Alibi Explain, Scikit-learn, Matplotlib, Python.

#### 6. Continuous Integration & Automated Testing for ML (Lab 6)
* **What I Implemented**:
  * Configured automated **GitHub Actions CI/CD** pipelines for ML systems enforcing strict test coverage thresholds, code style, and automated regression testing on every commit and pull request.
  * Deployed and configured **self-hosted GitHub Actions runners** to execute resource-intensive ML training and evaluation jobs independently of cloud-hosted runner limits.
* **Technologies Used**: GitHub Actions, Self-hosted Runners, Pytest, Coverage.py, Git.

#### 7. Containerizing ML Pipelines & Inference Microservices (Lab 3 / Lab 5)
* **What I Implemented**:
  * Containerized the complete ML pipeline into isolated **Docker** services: separate training pipeline container and Flask-based inference microservice.
  * Orchestrated multi-container workflows via **Docker Compose**, managing shared persistent named volumes for model artifacts and host bind mounts for live predictions and diagnostic logs.
  * Verified resilience and container health check endpoints across service restarts and volume unmounting.
* **Technologies Used**: Docker, Docker Compose, Flask, Scikit-learn, Linux Volume Management.

#### 8. Model Testing, Slicing & Weights & Biases (W&B) Evaluation (Lab 4)
* **What I Implemented**:
  * Implemented slice-based model evaluation to uncover hidden performance regressions and failure modes that aggregate accuracy metrics mask across user sub-populations.
  * Designed automated behavioral test suites (invariance, directional expectation, minimum functionality tests) for sentiment classification models.
  * Logged model runs, dataset slices, confusion matrices, and candidate comparison artifacts using **Weights & Biases (W&B)**.
* **Technologies Used**: Weights & Biases (W&B), Pytest, LLM Evaluators, Scikit-learn, Pandas.

#### 9. High-Throughput Streaming Data Ingestion with Apache Kafka (Lab 1)
* **What I Implemented**:
  * Established secure SSH tunnel connections to remote Kafka brokers and implemented high-throughput producer and consumer architectures in Python.
  * Analyzed offset management trade-offs (`auto_offset_reset`), consumer group partition rebalancing, and implemented exact log replay using `seek()` across custom offset ranges; diagnosed stream states using `kcat`.
* **Technologies Used**: Apache Kafka, `kafka-python`, `kcat`, Linux SSH Tunneling.

#### 10. Coding Agents & Enhanced Agent Harnesses (Lab 2)
* **What I Implemented**:
  * Compared out-of-the-box coding agents with customized agent harnesses augmenting the agent's capabilities with external browser tooling and domain-specific skills.
  * Integrated **Playwright** via both CLI and Model Context Protocol (MCP) to automate end-to-end UI interactions and test suite generation; authored reusable testing skills and refined workflows from agent execution traces.
* **Technologies Used**: Playwright, Model Context Protocol (MCP), Node.js, TypeScript/Python.

#### 11. Integrating LLM Features into Open-Source Production Software (Zulip Integration)
* **What I Implemented**:
  * Integrated generative AI features directly into the open-source **Zulip** enterprise chat platform codebase.
  * Implemented an automated **Message Recap** service providing concise, context-aware summaries of unread channel activity with direct citation links to source messages.
  * Built a real-time **Topic Title Improver** analyzing message semantics to maintain organized, descriptive discussion threads.
* **Technologies Used**: Python, Django, Zulip codebase, OpenAI / Claude API, Prompt Engineering.

#### 12. AI Systems Safety & Hazard Analysis (Dashcam Child-Safety System)
* **What I Implemented**:
  * Performed comprehensive systems hazard and safety analysis (STPA methodology) on a mission-critical AI dashcam system searching video footage for missing children.
  * Formulated organizational, system, and user safety goals; developed LLM-powered analytical tools to scale hazard identification and catalog ethical, privacy, and false-positive risk mitigations.
* **Technologies Used**: Systems Safety Engineering, STPA Hazard Analysis, Risk Mitigation Frameworks.

---

Work Experience
======
* **July 2025 – Present: Graduate AI Research Assistant**
  * *Digital Accessibility Lab, Carnegie Mellon University (CMU-Africa), Rwanda*
  * Spearheading the end-to-end ML training and edge deployment pipelines for the offline Speech Assist assistive communication system.
  * Fine-tuning, benchmarking, and quantizing speech recognition models (Whisper, Zipformer, Omnilingual ASR) on CDLI impaired Kinyarwanda and non-standard English datasets.
  * Engineering cross-platform mobile integration (whisper.cpp, Flutter) for low-cost Android smartphones in resource-constrained environments.
  * *Technologies*: PyTorch, Whisper, GGML, whisper.cpp, Sherpa-ONNX, Python, Flutter, Dart, Assistive AI.

* **Summer 2025: Research Intern**
  * *Max Planck Institute for Software Systems (MPI-SWS), Germany*
  * Built a longitudinal benchmarking framework for learned index structures, systematically evaluating operational stability (insertions, deletions, queries) under multi-threaded real-world workloads.
  * Authored concurrent C++ experimental testbeds measuring synchronization bottlenecks and race conditions.
  * *Technologies*: C++, Python, Benchmarking Frameworks, Concurrent Systems, Data Analysis.

* **Summer 2024: Research Intern**
  * *Max Planck Institute for Software Systems (MPI-SWS), Germany*
  * Reproducing and empirically validating published research on learned data systems; conducted extensive comparative analysis on ML-augmented systems.
  * *Technologies*: C++, Python, Git, Experimental Design.

* **Summer 2023: Openlab Summer Intern**
  * *European Organisation for Nuclear Research (CERN), Geneva, Switzerland*
  * Conducted accessibility and usability audits on CERN's Single Sign-On (SSO) authentication system utilized daily by thousands of international researchers; implemented targeted accessibility remediations.
  * *Technologies*: Python, React, Spring, GitLab, Assistive Technologies, WCAG Standards.

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Service and Leadership
======
* **President — CMU-Africa Book Club**
  * Led and facilitated recurring book discussions, intellectual roundtables, and campus reading initiatives.
  * Organized community events, literary meetups, and panel discussions fostering interdisciplinary dialogue and critical thinking across student cohorts.
  * Oversaw club operations, speaker sessions, event programming, and member engagement.
* **Member & Contributor — CMU-Africa Research Club & Academic Initiatives**
  * Participated in student-led research roundtables, peer paper reviews, and collaborative study groups in machine learning and systems.
