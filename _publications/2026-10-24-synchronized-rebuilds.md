---
title: "Synchronized Rebuilds: The Hidden Cost of Concurrent Inserts in Learned Indexes"
collection: publications
permalink: /publication/2026-10-24-synchronized-rebuilds
date: 2026-10-24
venue: 'arXiv preprint (arXiv:2610.33770)'
paperurl: 'https://arxiv.org/abs/2610.33770'
citation: 'Namuganga, E. I., & Bindschaedler, L. (2026). "Synchronized Rebuilds: The Hidden Cost of Concurrent Inserts in Learned Indexes." arXiv:2610.33770.'
---

**Authors:** **Emmilly Immaculate Namuganga**, Laurent Bindschaedler  
**Preprint:** [arXiv:2610.33770](https://arxiv.org/abs/2610.33770) \| [PDF](https://arxiv.org/pdf/2610.33770)

### Abstract
Nine years after learned indexes were proposed, their advantage on read-mostly data is well established, and a standard benchmark rates their best concurrent version as almost ready for use. Across more than 4,000 runs of 13 indexes, we find that each design pays for concurrent inserts in a different way. Gapped-array indexes rebuild their nodes in synchronized bursts ("waves of misery"), at positions that follow from three constants in the source. Model-placement indexes use three to four times the memory; buffered indexes take two to three times as long. Three of five concurrent learned indexes lost keys or stopped making progress under concurrency. Standard benchmarks miss both the bursts and the lost keys.

The bursts cost far more than in B-trees because each rebuild copies a node a thousand times larger than a page and, under concurrency, blocks every operation that reaches the node. The typical B-tree fix of randomizing node density only spreads the bursts out, while smaller nodes trade them for longer run times at scale. 

Two standard systems techniques remove them: a buffer that exists only while a node is rebuilt, and background rebuilds. We show that on 400M real keys, these techniques reduce the number of inserts whose latency exceeds 100µs by two orders of magnitude at one thread, and by one order of magnitude at sixteen threads when spare cores run the background threads, at a third to half the run time of buffered designs.

[View on arXiv](https://arxiv.org/abs/2610.33770) \| [Download PDF](https://arxiv.org/pdf/2610.33770)
