---
title: "How Widespread Is Accent-Language Confusion in MMS-LID? A Broad Sweep Across African Accents in AfriSpeech-200"
collection: publications
permalink: /publication/2026-12-10-afrilang-mms-lid
date: 2026-12-10
venue: 'AfriLang AI Conference (AfriLang 2026)'
paperurl: ''
citation: 'Namuganga, E. I., & Mwanje, M. (2026). "How Widespread Is Accent-Language Confusion in MMS-LID? A Broad Sweep Across African Accents in AfriSpeech-200." In Proceedings of AfriLang AI 2026.'
---

**Authors:** **Emmilly Immaculate Namuganga**, Mike Mwanje  
**Venue:** *AfriLang AI Conference 2026* (Dec 10, 2026) · **Decision:** Accepted (Oral/Paper)

### Abstract
A language identification (LID) model is supposed to detect which language is being spoken. Speech systems rely on that answer to decide what happens next, so a wrong guess matters most for low-resource languages, which have the least room to recover. The best current models have recently been shown to do something unexpected: when someone speaks a second language with a foreign accent, the model often reports the speaker's native language instead of the language they are actually speaking. Luganda-accented English, for example, gets labeled Luganda, not English. 

We measure how common this problem is for `facebook/mms-lid-4017`, the largest public LID model covering many languages, across 35 African accents in **AfriSpeech-200** (200 hours of Pan-African accented English labeled by speaker accent). We use every clip for these accents: 45,767 clips from 1,850 speakers, and average each rate over speakers so that every speaker counts once. Every clip is genuinely English speech (gold `eng`). We test whether the model instead reports each accent's expected native language under two setups:
1. **Free-choice setup**: letting the model choose freely among all 4,017 languages it knows (average wrong-labeling rate is 3.7%, and no accent exceeds 25%).
2. **Forced-choice setup**: restricting the decision to {`eng`, native language}. The error rate jumps to **14.3%**, 8 of 35 accents (23%) exceed 25%, and 14 of 35 (40%) exceed 10%. Specifically, Nigerian Pidgin error rises from 19% to 69%, Yoruba from 19% to 66%, Igbo from 8% to 57%, and Luganda from 10% to 33%.

We show that unconstrained multi-class evaluation masks the severity of accent-language confusion in large multilingual LID models, and provide the first comprehensive, speaker-balanced audit across African accented speech.
