---
title: "Microsoft 365 Copilot Communications Recaps | Microsoft Learn."
description: "[Article description]."
author: "Ross-GH"
ms.author: "rossav"
ms.service: "microsoft-365-copilot"
ms.topic: get-started #Don't change
ms.date: 04/03/2025

#customer intent: As an M365 user, I want understand Communications Recaps, so that I can understand the value, and effectively manage my information exposure.

---
> [!NOTE]
> Whether this feature is enabled or disabled doesn't impact access control (_privacy & security assurances_) of your private communications.

# Get started with Communications Recaps

Communications Recaps provide a personal communication memory bank for Microsoft 365 Copilot to  access the knowledge trapped in our day-to-day communications. Microsoft 365 Copilot captures these recaps once every 24 hours and groups them by person who communicated them. Microsoft 365 Copilot search, creation of content, and summarization are then further personalized using these recaps to provide more relevant results just for you.

## Prerequisites

The Enhanced Personalization control must be enabled for you. This provides Microsoft permission to process your private data to produce Communications Recaps. They remain private to you, and this permission is revocable, but will disable this feature and delete your Communications Recaps generated. See [Microsoft 365 Copilot Enhanced Personalization Control](/concepts/control-enhanced-personalization-privacy.md). 

<!--Optional: Prerequisites - H2

If this section is needed, make Prerequisites your first H2 
in the article. Use clear and unambiguous language and use
an unordered list format. 

-->
## Communications Recaps Explained Through Example

Consider the following example:

Alice messages Bob & Charlie in a Microsoft Teams group chat:

`Good morning, we're going to need to move the release of project Fabrikam from April 2025 to June 2025 as we need more time for safety testing. The SLT made the decision last night`

Communications recaps process your communications data every 24 hours to capture knowledge such as this, so for Bob who has an Microsoft 365 Copilot license this knowledge of date change is captured to his Communications Recaps. Microsoft 365 Copilot can then search for, recall, and utilize this knowledge to help Bob with his day-to-day tasks. Microsoft 365 Copilot can use this new and evolving knowledge over time to help with project schedules, creating reports, and considering as relevant context for other tasks Bob chooses and uses Microsoft 365 Copilot for. Bob doesn't have to have seen this message yet for Communications Recaps to capture the new knowledge and assist Bob with it. To help Bob understand why this knowledge is present and used by Microsoft 365 Copilot, citations are provided to the original message whenever it's relevant to the assitance and responses provided to him.  

For Charlie who doesn't have an Microsoft 365 Copilot license, or has the Enhanced Personalization control turned off ([Prerequisites](#prerequisites)). M365 Copilot doesn't create a Communications Recaps memory bank, which results in a less personalized and useful experience for Charlie.

For Alice, who has an Microsoft 365 Copilot license and the Enhanced Personalization control enabled, the knowledge from her communication is added to her Communications Recaps. Microsoft 365 Copilot now understands more about her day-to-day work from communications she's sent as well as received, and helps complete tasks using personal private knowledge. From file summaries becoming more relevant to her by being personalized using Communications Recaps, to creating personalized content such as reports, product documentation, project schedules, and more with Microsoft 365 Copilot now enhanced with Alice's personal knowledge from Commmunciations Recaps.

## Microsoft 365 Copilot Personalized Search Grounding Data

Grounding data is the information provided to Microsoft 365 Copilot by Microsoft Graph. Communications Recap is a unique private personal data source for each user. It's used as the sole, or extra grounding data to answer a Microsoft 365 Copilot user's search.

For users who have Communications Recaps, Microsoft 365 Copilot search is personalized to include your Communications Recaps only for you; they remain private.

Imagine Bob from our [Communications Recaps Explained Through Example](#communications-recaps-explained-through-example) can’t remember who, when, or through which communication channel a person discussed project Fabrikam’s release date change a month later. Microsoft 365 Copilot, thanks to your Communications Recaps, now has unique memory of the knowledge gained from your private communications data used just for you. Bob asks Microsoft 365 Copilot 

`Who did I speak to about project Fabrikam’s release date change?`

Microsoft 365 Copilot performs a search on his personal Communications Recaps and returns a Communications Recap as an answer:

`Alice informed you project Fabrikam’s release date has changed from April 2025 to June 2025`

Complete with citation to the original message from the original communication medium so Bob can verify this response and the context it was in. 

> [!TIP]
> Microsoft 365 Copilot doesn't know how long ago, and which communication channels to search without user specification who might also not recall. Communications Recaps are a reliable unified communications knowledge base Microsoft 365 Copilot uses to better answer ambiguous queries in a personalized private way. You might find Communications Recaps provide the only answer to your queries on knowledge gained from communications, especially as they build over time learning and remembering with you under your control.

## Related content

* [Enhanced Personalization Control](control-enhanced-personalization-privacy.md)

<!--

Remove all comments except the customer intent
before you sign off or merge to the main branch.

-->