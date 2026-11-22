---
title: "Autonomous Multi-Source Financial RAG Agent"
collection: projects
type: "projects"
layout: single
permalink: /projects/agentic-rag-centum
venue: "Carnegie Mellon University (Agentic AI Systems)"
location: "Kigali, Rwanda"
---

As part of the **Agentic AI Systems** coursework at Carnegie Mellon University, I engineered an autonomous enterprise-grade Retrieval-Augmented Generation (RAG) agent capable of synthesizing complex financial information across heterogeneous corporate disclosures.

The system was evaluated against annual integrated financial reports, AGM minutes, executive presentation slides, and balance sheets of **Centum Investment Company PLC**—East Africa's largest listed investment company.

### Key Technical Challenges

Financial document reasoning poses critical challenges for conventional naive RAG pipelines:
1. **Numerical Precision & Hallucination**: Financial metrics (EBITDA, Net Asset Value, debt ratios) require exact mathematical answers rather than semantic approximations.
2. **Tabular Data Layouts**: Dense multi-column balance sheets and financial schedules break standard paragraph-based chunking.
3. **Disparate Modalities & Formats**: Correlating qualitative executive commentary from AGM transcripts with quantitative disclosures in audited financial statements.

### Architecture & What I Implemented

1. **Hybrid Retrieval Architecture (Vector + SQL Engine)**:
   - Built a dual-path retrieval pipeline integrating **ChromaDB** for semantic textual analysis with a structured SQLite database (`centum_financials.db`) containing parsed corporate balance sheets and income statements.
   - Designed schema normalization for complex financial metrics across fiscal years, allowing the agent to execute deterministic SQL queries for precise numerical aggregations.

2. **Autonomous Tool-Calling Agent**:
   - Implemented an agentic controller leveraging OpenAI function calling to dynamically decide whether to invoke semantic vector retrieval, query the SQL financial database, or perform multi-step cross-document synthesis.
   - Built verification steps where the agent cross-references computed quantitative totals with textual notes and disclosure disclosures.

3. **Domain-Specific Parsing & Chunking**:
   - Developed custom document chunking pipelines that preserve tabular structure, headers, and hierarchical section context across 200+ page corporate PDFs using PyPDF2 and pdfplumber.
   - Applied metadata enrichment (fiscal year, document category, section type) to enable filtered vector search.

4. **Agent Evaluation**:
   - Benchmarked the agent's performance on complex multi-hop financial questions (e.g., assessing debt-to-equity ratio evolution across three fiscal cycles combined with management guidance from AGM transcripts).
   - Validated factual faithfulness, retrieval context precision, and hallucination elimination.

### Technologies & Tools Used
* **Languages**: Python
* **LLM & Agent Frameworks**: LangChain, OpenAI GPT-4o / GPT-3.5 APIs, OpenAI Tool Calling
* **Vector Store & Embeddings**: ChromaDB, OpenAI text-embedding-3
* **Structured Data**: SQLite, Pandas, SQL
* **Document Processing**: PyPDF2, pdfplumber
