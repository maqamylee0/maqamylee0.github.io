---
title: "End-to-End Production Movie Recommendation Streaming Platform"
collection: projects
type: "projects"
layout: single
permalink: /projects/mlip-recommender
venue: "Carnegie Mellon University (17-645 Machine Learning in Production)"
location: "Kigali, Rwanda & Pittsburgh, USA"
---

As part of the **Machine Learning in Production (17-645)** course at Carnegie Mellon University, I co-engineered and operated an end-to-end recommendation streaming service for a streaming platform serving over **1,000,000 users** with a catalog of **20,000 movies** (Team Outliers).

The central objective was not merely offline model accuracy, but the complete operational lifecycle of a production ML service: zero-downtime updates, live stream processing, automated retraining, real-time telemetry, model drift detection, property-based testing, and incident response.

### Architectural Overview & What I Implemented

1. **Real-Time Data Streaming & Ingestion**:
   - Built a scalable event ingestion pipeline consuming streaming user interaction logs (ratings, watch duration, searches) directly from an **Apache Kafka** cluster topic (`movielog10`).
   - Implemented streaming cache buffers, schema validation, and defensive data cleaning pipelines to guard against malformed records and out-of-order events.

2. **Model Engineering & Offline Evaluation**:
   - Designed and benchmarked three distinct candidate architectures:
     - **Alternating Least Squares (ALS) Matrix Factorization**: Collaborative filtering modeling latent user preferences from implicit feedback.
     - **Content-Based Filtering**: TF-IDF and metadata feature representations capturing genre, director, and cast vectors.
     - **Popularity & Cold-Start Baselines**: Segment-level popular fallback models.
   - Built an **LLM-assisted cold-start pipeline** utilizing semantic prompting to extract structured keyword representations for newly onboarded movies and sparse user profiles.
   - Conducted rigorous offline evaluation across ranking metrics (NDCG, MAP@K, hit rate) before model promotion.

3. **Production Serving Microservice**:
   - Engineered a high-throughput **WSGI/Flask** REST inference service providing low-latency recommendations.
   - Implemented dynamic **A/B testing routing** and zero-downtime container cutover, maintaining strict availability SLAs (≥70% uptime guaranteed over months of live operation).
   - Developed automated retraining pipelines triggered by performance degradation and data accumulation milestones.

4. **Testing, Reliability & Chaos Drills**:
   - Enforced comprehensive test suites including API contract tests, component integration tests, and property-based generative testing using **Hypothesis**.
   - Authored incident response runbooks and conducted live chaos drill simulations (unclean shutdowns, broker disconnection, upstream payload mutations) followed by formal post-mortem reports.

5. **Real-Time Monitoring & Telemetry**:
   - Configured custom Prometheus metric collectors tracking request throughput, p50/p95/p99 latency, error rates, and prediction distribution shifts.
   - Visualized service health and statistical data drift on interactive **Grafana** dashboards.

### Technologies & Tools Used
* **Languages & Core**: Python, Bash, SQL
* **Streaming & Messaging**: Apache Kafka, `kafka-python`, `kcat`
* **Machine Learning**: Scikit-learn, PyTorch, Implicit ALS Matrix Factorization
* **Serving & Infrastructure**: Flask, WSGI (Gunicorn), Docker, Docker Compose, Linux VM
* **CI/CD & Testing**: GitHub Actions, Pytest, Hypothesis (Property-Based Testing), Coverage.py
* **Observability**: Prometheus, Grafana, Node Exporter
