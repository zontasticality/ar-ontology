---
title: Start
type: start
---

# Welcome to the Automated Reasoning Ontology!

This is an ontology to catalogue and investigate concepts in [[mentions:Automated Reasoning]]. Specifically to answer the question: [[mentions:Feasability of Program Inference|To what degree can existing logical frameworks and their satisfiability algorithms be generalized and applied to inferring programs in different type theories?]].

## Types

Ontologies have types for their nodes and links between nodes, and this one is no exception! The node and link types (and their meanings) are as follows:

Node Types
 - `start` - unique type of the node you are reading right now.
 - `structure` - a formally [intensionally](https://www.lesswrong.com/posts/HsznWM9A7NiuGsp28/extensions-and-intensions) definable concept, i.e. assume you can define this mathematically.
 - `category` - an informally (extensionally) defined concept, perhaps defined in terms of shared experience or other colloquial terms.
 - `algorithm` - a specific function or program
 - `source` - a note linking to and sometimes summarizing an external document.
 - `argument` - a note arguing for a certain point of view (TODO: do we expect to use this?)
 - `undefined` - notes that don't have a good category yet.

Link Types
 - `subtype` - if a concept (a `structure` or a `category`) inherits traits/properties from another concept, the concept inheriting traits should link to the supertype using the `subtype` link.
 - `uses` - if a concept uses another concept in its definition, for example, a `structure` that is constructed from other `structures` this link can be used.
 - `mentions` - if any note mentions another note, but not in any kind of particular way, this link type may be used.
 - `cites` - should be used to link to `source` nodes, to cite that source.

