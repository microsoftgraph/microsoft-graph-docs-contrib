---
title: "Microsoft Graph connector experiences"
description: "Discover the experiences that you can enable with Microsoft Graph connectors and the requirements to build those experiences."
author: monaray
ms.localizationpriority: high
doc_type: conceptualPageType
ms.prod: search
---

# Microsoft Graph connector experiences

Microsoft Graph connectors offer an intuitive way to bring content from external services into Microsoft Graph and the semantic search index. This enables you to make external data discoverable across a set of Microsoft 365 experiences.

This article describes the experiences that you can enable with Microsoft Graph connectors and the requirements to enable those experiences.

To enable these experiences, you must first build a basic Microsoft Graph connector. For details about how to create a connection, register your schema, and ingest items with the correct access control list, see [Work with the Microsoft Graph connectors API](/graph/connecting-external-content-connectors-api-overview). 

## Microsoft Search 
[Microsoft Search](/microsoftsearch/connectors-overview) with Microsoft Graph connectors allows your data to be searchable for users in the Microsoft Search endpoints, including Office.com, Bing at Work, and SharePoint. 

To configure your connector for Microsoft Search:
- Apply [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema). Semantic labels help with ranking, relevance, and default display templates in search results.
- Apply [property attributes](/graph/connecting-external-content-manage-schema#property-attributes) to your [schema](/graph/api/resources/externalconnectors-schema). Property attributes determine the search functionalities of each property.
- Optionally, add [searchSettings](/graph/api/resources/externalconnectors-searchsettings) when you [create your connection](/graph/api/externalconnectors-external-post-connections) to register custom result types for your search results. 

## Context IQ in Outlook on the web (preview)
[Context IQ in Outlook on the web](https://techcommunity.microsoft.com/t5/microsoft-365-blog/microsoft-editor-using-context-iq-in-outlook-on-the-web-and-word/ba-p/3643497) with Microsoft Graph connectors allows users to find in-content suggestions from third-party data while composing emails in Outlook on the web. Editors using Context IQ will surface relevant people, files, and Microsoft Graph connector content that users can select and embed as an adaptive card within the email.
Users can access this feature by inserting "/" in an Outlook on the web email and typing keywords. They are then given relevant suggestions, based on the context typed, that can be inserted into the body of the email. 

To configure your connector for Context IQ:
- Apply the following [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema): `title`, `url`, `iconUrl`. These labels determine which properties are displayed in the experience.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. For supported activity types, see [externalActivity](/graph/api/resources/externalconnectors-externalactivity). The platform uses these activities to determine which users interacted most recently with which items. Items with activities performed by a given user have a higher likelihood of being displayed to that user in the experience.
- Add a [urlToItemrResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` will enable the platform to become aware when users share URLs from your external content with each other. The experience will have a higher likelihood of displaying content that has been shared with that user.

## Microsoft 365 Copilot (limited preview)
[Microsoft 365 Copilot](https://blogs.microsoft.com/blog/2023/03/16/introducing-microsoft-365-copilot-your-copilot-for-work/) with Microsoft Graph connectors allows users to easily find, summarize, and learn important details about *all* content relevant to a user's natural language prompts. 

> [!NOTE]
> - Microsoft Graph connectors with Microsoft 365 Copilot is in early access preview. When you get access to the [developer preview program](https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR06na7ADVcFBoFXEJ5M8YD1UNkdQODE5VDNKOUQ2UlBSVUJJRlJDVktTVS4u), you'll get details about how to test your Microsoft Graph connector with Microsoft 365 Copilot.
> 
> - Only customers who are part of the [Microsoft 365 Copilot early access program](https://blogs.microsoft.com/blog/2023/05/09/introducing-the-microsoft-365-copilot-early-access-program-and-2023-microsoft-work-trend-index/) will have Microsoft 365 Copilot enabled in their tenants in the coming months.

To make sure that Microsoft 365 Copilot uses your content effectively:
- Add a [urlToItemResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` enables the platform to detect when users share URLs from your external content with each other. Microsoft 365 Copilot will have a higher likelihood of displaying content that has been shared with that user. 
- Apply [semantic labels](/graph/connecting-external-content-manage-schema). Semantic labels help Microsoft 365 Copilot interpret the semantic meaning of your schema. Apply as many of them to your schema as applicable.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. For a list of supported activity types, see [externalactivity](/graph/api/resources/externalconnectors-externalactivity). Items that have more activities are boosted in importance.

## Microsoft 365 Hub 
The [Microsoft 365 Hub](https://office.com) with Microsoft Graph connectors allows your data to be discoverable from [Microsoft365.com](https://www.microsoft365.com/) under **Quick Access** and **My Content**. This helps users find all the content that is important to them in one place. 

To configure your connector for the [Microsoft 365 Hub](https://office.com):
- Apply the following [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema): `title`, `url`, `iconUrl`. These labels determine which properties are displayed in the experience.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. or a list of supported activity types, see [externalactivity](/graph/api/resources/externalconnectors-externalactivity). These activities indicate to the platform which users have interacted most recently with which items. Items with activities performed by a given user have a higher likelihood of being displayed to that user in the experience.
- Add a [urlToItemrResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` will enable the platform to detect when users share URLs from your external content with each other. The experience will have a higher likelihood of displaying content that has been shared with that user.

