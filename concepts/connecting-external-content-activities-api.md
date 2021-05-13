---
title: Activities API
description: Activities API
author: mecampos
ms.author: mecampos
ms.topic: conceptual
---
<!-- 1. H1
Required. Set expectations for what the content covers, so customers know the 
content meets their needs. Should NOT begin with a verb.
-->

# Activities API

<!-- 2. Introductory paragraph 
Required. Lead with a light intro that describes what the article covers. Answer the 
fundamental "why would I want to know this?" question. Keep it short.
-->
Microsoft Graph connectors
When you interact with your data provide the basic building blocks through which we create intelligence-powered end user facing apps and services within M365.
Currently we collect a rich set of event-based user data for most of our 1P data sources to form the Working set. This in turn powers end user facing experiences such as People card, Information Protection (part of Security and Compliance), Workplace Insights, and Intelligent Discovery (Feed). 
3P SCD content aims to participate in these experiences as well to deliver a rich set of integrated end user experiences. To achieve this, we must gather high quality signals from this content. Because these user interactions occur primarily within the context of 3P SCD apps, we request our SCD partners to send us high quality and high fidelity signals via the 3P Signals Graph API. These signals would in turn flow through SIGS, be used to populate users' working sets thus powering end user experiences. 

This document outlines the scope, requirements, and design for the 3P Signals Graph API. 
<!-- 3. H2s
Required. Give each H2 a heading that sets expectations for the content that follows. 
Follow the H2 headings with a sentence about how the section contributes to the whole.
-->

## What are user activities?​

An activity is an event capturing a user behavior that is commonly used to power intelligent end-user facing experiences (like content recommendation). ​

## Activity-Content relationship​

User activities occur on user content. ​

Graph connectors establish a content ingestion pipeline. ​

The Activities API establishes a user activity ingestion pipeline (on ingested content).​







## [Section n heading]
<!-- add your content here -->

<!-- 4. Next steps
Required. Provide at least one next step and no more than three. Include some 
context so the customer can determine why they would click the link.
-->

## Next steps
<!-- Add a context sentence for the following links -->
- [Write concepts](contribute-how-to-write-concept.md)
- [Links](links-how-to.md)
