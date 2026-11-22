---
title: "Security Auditing & Hardening for Tool-Calling Agents (MCP)"
collection: projects
type: "projects"
layout: single
permalink: /projects/mcp-agent-security
venue: "Carnegie Mellon University (17-645 Machine Learning in Production)"
location: "Kigali, Rwanda & Pittsburgh, USA"
---

As autonomous AI agents are entrusted with external tools, APIs, and state-modifying actions, securing the agent runtime against adversarial manipulation becomes paramount. 

In this project, I audited, attacked, and defensively hardened an autonomous airline customer service agent built on the **Model Context Protocol (MCP)**, based on the **Tau2-bench** benchmark.

### Problem & Threat Vectors

When an LLM agent interacts with external tools (booking flights, issuing refunds, modifying passenger itineraries), untrusted user inputs can manipulate agent decisions through:
* **Indirect Prompt Injections**: Malicious instructions concealed in customer chat inputs, ticket notes, or itinerary descriptions overriding the agent's system instructions.
* **Tool-Poisoning Attacks**: Malicious payload structures crafted to exploit loose argument typing and trigger unintended tool calls.
* **Privilege Escalation**: Tricking the agent into executing privileged administrative actions (e.g., unauthorized full fee waivers or accessing other passengers' PII).

### What I Implemented

1. **Adversarial Red-Teaming**:
   - Engineered systematic attack scenarios targeting the tool-calling runtime in both Python and TypeScript implementations.
   - Demonstrated proof-of-concept exploits achieving unauthorized ticket modifications and safety constraint bypasses.

2. **Defensive Hardening Layers**:
   - **Strict Schema Enforcement**: Implemented strict JSON Schema validation and boundary checks on all tool input arguments prior to tool execution.
   - **Deterministic State Guarantees**: Built state verification wrappers ensuring that immutable business constraints (e.g., cancellation policy limits, maximum refund thresholds) cannot be bypassed even if the LLM hallucinates approval.
   - **Input Sanitization & Guardrails**: Deployed layered pre-execution prompt sanitization and post-execution output verification filtering unauthorized instruction patterns.

3. **Empirical Security Auditing**:
   - Formulated formal security guarantees and verified that all hardened agent test cases blocked 100% of adversarial injection payloads while maintaining a zero false-rejection rate on legitimate customer inquiries.

### Technologies & Tools Used
* **Protocols & Frameworks**: Model Context Protocol (MCP), Tau2-bench
* **Languages**: Python, TypeScript
* **Validation & Security**: JSON Schema, Pydantic, Adversarial Prompt Injection Testing, Execution Sandboxing
