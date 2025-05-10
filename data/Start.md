---
title: Start
type: start
---

# Welcome to the Automated Reasoning Ontology!

This is an ontology to catalogue and investigate concepts in Automated Reasoning. Specifically to answer the question: [[mention:Feasibility of Program Inference|To what degree can existing logical frameworks and their satisfiability algorithms be generalized and applied to inferring programs in different type theories?]].

## Before You Start

***For an improved ontology viewing experience it is recommended to tweak the settings on the sidebar to hide `uses` and `mention` links.***

## Types

Ontologies have types for their nodes and links between nodes, and this one is no exception! The node and link types (and their meanings) are as follows:

Node Types
 - `start` - unique type of the node you are reading right now.
 - `structure` - a formally [intensionally](https://www.lesswrong.com/posts/HsznWM9A7NiuGsp28/extensions-and-intensions) definable concept, i.e. assume you can define this mathematically.
 - `category` - an informally (extensionally) defined concept, perhaps defined in terms of shared experience or other colloquial terms.
 - `algorithm` - a specific function or program
 - `source` - a note linking to and sometimes summarizing an external document.
 - `argument` - a note arguing for a certain point of view (e.g., [[mention:Feasibility of Program Inference]]).
 - `undefined` - notes that don't have a good category yet.

Link Types
 - `is-a` - if a concept (a `structure` or a `category`) inherits traits/properties from another concept, the concept inheriting traits should link to the supertype using the `is-a` link.
 - `is-broadly` - Basically the same as `is-a` but for more longer-range subtyping relations in order to create a better visualization.
 - `uses` - if a concept uses another concept in its definition, for example, a `structure` that is constructed from other `structure`s this link can be used.
 - `part` - if a concept is a part of another concept, i.e. some other concept is an integral aspect (piece that is composed), this can be used as a "stronger" connection than `uses` to make the graph nicer (has a stronger force for the force-graph).
 - `mention` - if any note mentions another note, but not in any kind of particular way, this link type may be used.
 - `cites` - should be used to link to `source` nodes, to cite that source.

If you're curious about the source code of this repository, check out the following link: https://github.com/zontasticality/ar-ontology

## AI Disclosure

`Gemini 2.5 Pro 03-25` and `Gemini 2.5 Pro 05-06` output was used verbatim for helping readers explore sources for the reader's convenience. Models were also used as a writing aid due to the sheer amount of content required to create a comprehensive ontology. For the ontology AI output was used for idea-generation and drafting purposes only and rewritten.