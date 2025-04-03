---
title: "M365 Copilot Communications Recaps Deep Dive | Microsoft Learn."
[Follow SEO guidance at 
https://review.learn.microsoft.com/en-us/help/platform/seo-meta-title]
description: "[Article description]."
author: "Ross-GH"
ms.author: "rossav"
ms.service: "microsoft-365-copilot"
ms.topic: get-started #Don't change
ms.date: 04/03/2025

#customer intent: As an M365 user, I want understand Communications Recaps, so that I can understand the value, and effectively manage my information exposure.

---


# Get started with Communications Recaps

<!-- Required: Article headline - H1

Identify the product or service the article covers.

-->

Is a personal communication memory bank that enables M365 Copilot to have access to all the knowledge typically trapped in our day-to-day communications. We capture these recaps and group them by person who communicated them. Consider the following example:

Alice messages Bob & Charlie in a Microsoft Teams group chat: “Good morning, we are going to need to move the release of project Moonshot from April 2025 to June 2025 as we need more time for safety testing. The SLT made the decision last night”

Communications recaps processes your communications data every 24 hours to capture information such as this, so for Bob who has an M365 Copilot license this knowledge of date change is captured to his Communications Recaps. M365 Copilot can then search for, recall, and utilise this information with advanced reasoning to help Bob with his day-to-day tasks. This includes adjusting project schedules, creating reports, and considering the move as relevant context for other tasks Bob chooses and uses M365 Copilot for.

For Charlie who does not have an M365 Copilot license, or has the Enhanced Personalization control turned off ([control information here](/concepts/control-enhanced-personalization-privacy.md)). A Communications Recaps memory bank is not created, and this knowledge is not guaranteed to be part of M365 Copilot’s understanding resulting in a less personalised and useful experience for Charlie.

For Alice, who has an M365 Copilot license and the Enhanced Personalization control turned on, the knowledge from her communication is added to her Communications Recaps. This way, M365 Copilot can understand more about her day-to-day work, what she has and has not communicated, and assist in tasks from making file summaries more relevant to her, to creating personalized content such as reports, product documentation, project schedules, and more with M365 Copilot.

## M365 Copilot Personalised Search Grounding Data
Grounding data is the information provided to M365 Copilot by Microsoft Graph. Communications Recap is a unique private personal data source for each user. It is used as the sole, or additional grounding data to answer an M365 Copilot user's search.

For users who have Communications Recaps, M365 Copilot search will be personalised to include your personal Communications Recaps only for you; they remain private.

Imagine Bob from our [Get started with Communications Recaps](#get-started-with-communications-recaps) can’t remember who, when, or through which communication channel a person discussed project Moonshot’s release date change. M365 Copilot, thanks to your Communications Recaps, now has unique memory of the knowledge gained from your private communications data used just for you. For example, Bob asks M365 Copilot for “Who did I speak to about project Moonshot’s release date change?”. M365 Copilot will perform a search on his personal Communications Recaps, and in this case return a communications recap as an answer stating “Alice informed you project Moonshot’s release date has changed from April 2025 to June 2025” complete with citation to the original message from the original communication medium. Given the nature of Generative AI tool use in combination with ambiguous queries Communications Recaps are sometimes the only reliable unified communications knowledge base to answer, because M365 Copilot does not know how long ago, and which communication channels to search. You may find Communications Recaps provide the only answer to your queries on knowledge gained from communications, especially as they build over time learning and remembering with you under your control.


<!-- Required: Introductory paragraphs (no heading)

Write a brief introduction that can help the user
determine whether the article is relevant for them
and to describe what aspects of a product or service
the article covers.

-->

## Prerequisites

<!--Optional: Prerequisites - H2

If this section is needed, make Prerequisites your first H2 
in the article. Use clear and unambiguous language and use
an unordered list format. 

-->

## [Table of stages]

<!-- Optional: Table of stages - H2

In an H2 section, if the process for getting started is long
or complex, list the stages in a table. For each stage in the
table, include a link to an article that describes how to
complete that stage.

Use either a table or one or more stage sections, as described 
in the next section. 

-->

## [Stages]

<!-- Optional: Stages - H2

In one or more H2 sections, describe the stages to
get started with the product, service, or feature.

-->

## [Who or what information]

<!-- Optional: Links to use information - H2

In an H2 section, describe who the product or service is for,
or what it's used for.

-->

## Get help

<!-- Optional: Links to help information - H2

In an H2 section, list resources and support services that 
provide help when you use the product or service.

-->

## Next step -or- Related content

> [!div class="nextstepaction"]
> [Next sequential article title](link.md)

-or-

* [Related article title](link.md)
* [Related article title](link.md)
* [Related article title](link.md)

<!-- Optional: Next step or Related content - H2

Consider adding one of these H2 sections (not both):

A "Next step" section that uses 1 link in a blue box 
to point to a next, consecutive article in a sequence.

-or- 

A "Related content" section that lists links to 
1 to 3 articles the user might find helpful.

-->

<!--

Remove all comments except the customer intent
before you sign off or merge to the main branch.

-->