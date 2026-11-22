---
title: "Comparing Multilingual ASR Models for Low-Resource African Languages: What Works, and When"
collection: publications
permalink: /publication/2026-12-01-wiml-neurips
date: 2026-12-01
venue: 'WiML Workshop at NeurIPS 2026'
paperurl: 'https://openreview.net/forum?id=iZx24ySsjJ'
citation: 'Namuganga, E. I., Njema, R. I., Mwanje, M., & Olufemi, V. T. (2026). "Comparing Multilingual ASR Models for Low-Resource African Languages: What Works, and When." In Women in Machine Learning (WiML) Workshop at NeurIPS 2026 (Poster Presentation).'
---

**Authors:** [**Emmilly Immaculate Namuganga**](https://openreview.net/profile?id=~Emmilly_Immaculate_Namuganga1), [Ramsey Ithacius Njema](https://openreview.net/profile?id=~Ramsey_Ithacius_Njema1), [Mike Mwanje](https://openreview.net/profile?id=~Mike_Mwanje1), [Victor Tolulope Olufemi](https://openreview.net/profile?id=~Victor_Tolulope_Olufemi1)  
**Venue:** *Women in Machine Learning (WiML) Workshop at NeurIPS 2026* (Poster Presentation, Dec 2026)  
**OpenReview Forum:** [openreview.net/forum?id=iZx24ySsjJ](https://openreview.net/forum?id=iZx24ySsjJ)

### Abstract
Multilingual speech foundation models—such as MMS, Whisper, Omnilingual ASR, and SeamlessM4T—promise broad global language coverage, yet empirical guidance on how to deploy and adapt them for low-resource African languages remains scarce and fragmented. 

This paper presents a systematic, fair-comparison benchmark evaluating modern multilingual ASR architectures on low-resource African speech:
* **Zero-Shot vs. Fine-Tuning**: Quantifying when zero-shot foundation models suffice versus when targeted parameter-efficient or full fine-tuning is indispensable to achieve acceptable word error rates (WER).
* **Decoder Architectures (CTC vs. LLM Decoders)**: Evaluating trade-offs between lightweight Connectionist Temporal Classification (CTC) decoders and autoregressive Large Language Model (LLM) decoders under fixed encoder representations, assessing inference latency, compute budget on CPU/GPU, and error resilience.
* **Language Family Pooling**: Measuring the cross-lingual transfer and accuracy penalties of multi-language pooling (training across language families vs. individual language models) for serving low-resource communities efficiently.
* **Failure Mode Taxonomy**: Identifying systemic failure patterns across acoustic conditions, language varieties, and tokenization blind spots.

[View on OpenReview](https://openreview.net/forum?id=iZx24ySsjJ)
