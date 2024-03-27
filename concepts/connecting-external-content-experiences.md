---
title: "Microsoft Graph connector experiences"
description: "Discover the experiences that you can enable with Microsoft Graph connectors and the requirements to build those experiences."
author: monaray
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: search
---

# Microsoft Graph connector experiences

Microsoft Graph connectors offer an intuitive way to bring content from external services into Microsoft Graph and the semantic search index, enabling you to make external data discoverable across a set of Microsoft 365 experiences.

This article describes the experiences that you can enable with Microsoft Graph connectors and the requirements to enable those experiences.

To enable these experiences, you must first build a basic Microsoft Graph connector. For details about how to create a connection, register your schema, and ingest items with the correct access control list, see [Work with the Microsoft Graph connectors API](/graph/connecting-external-content-connectors-api-overview).

## Microsoft Search

[Microsoft Search](/microsoftsearch/connectors-overview) with Microsoft Graph connectors allows your data to be searchable for users in the Microsoft Search endpoints, including Office.com, Bing at Work, and SharePoint.

To configure your connector for Microsoft Search:

- Apply [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema). Semantic labels help with ranking, relevance, and default display templates in search results.
- Apply [property attributes](/graph/connecting-external-content-manage-schema#property-attributes) to your [schema](/graph/api/resources/externalconnectors-schema). Property attributes determine the search functionalities of each property.
- Optionally, add [searchSettings](/graph/api/resources/externalconnectors-searchsettings) when you [create your connection](/graph/api/externalconnectors-external-post-connections) to register custom result types for your search results.

## Context IQ in Outlook on the web (preview)

[Context IQ in Outlook on the web](https://techcommunity.microsoft.com/t5/microsoft-365-blog/microsoft-editor-using-context-iq-in-outlook-on-the-web-and-word/ba-p/3643497) with Microsoft Graph connectors allows users to find in-content suggestions from third-party data while composing emails in Outlook on the web. Editors using Context IQ surface relevant people, files, and Microsoft Graph connector content that users can select and embed as an adaptive card within the email. Users can access this feature by inserting "/" in an Outlook on the web email and typing keywords. Outlook presents relevant suggestions, based on the context typed, that can be inserted into the body of the email.

To configure your connector for Context IQ:

- Apply the following [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema): `title`, `url`, `iconUrl`. These labels determine which properties are displayed in the experience.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. For supported activity types, see [externalActivity](/graph/api/resources/externalconnectors-externalactivity). The platform uses these activities to determine which users interacted most recently with which items. Items with activities performed by a given user have a higher likelihood of being displayed to that user in the experience.
- Add a [urlToItemResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` enables the platform to become aware when users share URLs from your external content with each other. The experience has a higher likelihood of displaying content that has been shared with that user.

## Copilot for Microsoft 365

[Microsoft Copilot for Microsoft 365](/microsoft-365-copilot/microsoft-365-copilot-overview) with Microsoft Graph connectors allows users to easily find, summarize, and learn important details about *all* content relevant to a user's natural language prompts.

To make sure that Copilot for Microsoft 365 uses your content effectively:

- Apply [semantic labels](/graph/connecting-external-content-manage-schema). Semantic labels help Copilot for Microsoft 365 interpret the semantic meaning of your schema. Apply as many of them to your schema as applicable. The `iconUrl`, `title`, and `url` labels must be applied for content to surface in Copilot. Users can use semantic labels as part of their prompts in Copilot, but they won't get the expected response if the respective semantic label isn't applied.
- Apply the `searchable` property label to schema properties with stored content that you would like your users' prompts to match against in Copilot. The `searchable` label is the most important with respect to Copilot because it defines which schema properties can be searched against.
- Add a [urlToItemResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` enables the platform to detect when users share URLs from your external content with each other. Copilot for Microsoft 365 has a higher likelihood of displaying content that has been shared with that user.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. For a list of supported activity types, see [externalActivity](/graph/api/resources/externalconnectors-externalactivity). Items that have more activities are boosted in importance.
- Provide meaningful descriptions in the `description` property when [creating connections](/graph/api/externalconnectors-external-post-connections). Rich descriptions improve the likelihood of displaying content in Copilot.

In addition, search administrators should ensure that your Microsoft Graph connector connections are enabled for [inline results](/microsoftsearch/connectors-in-all-vertical), by using the following steps:

- Open the Admin Center, go to **Search & intelligence** > **Customizations** > **Verticals** and select the **All** vertical.
- Select **Manage connector result**. Ensure that **Show results inline** is selected and that the connections that you want to enable for Search and Copilot are checked.

## Microsoft 365 app

The [Microsoft 365 app](https://microsoft365.com) with Microsoft Graph connectors allows your data to be discoverable from [microsoft365.com](https://www.microsoft365.com/) under **Quick Access** and **My Content**. This helps users find all the content that is important to them in one place.

To configure your connector for the [Microsoft 365 app](https://microsoft365.com):

- Apply the following [semantic labels](/graph/connecting-external-content-manage-schema#semantic-labels) to your [schema](/graph/api/resources/externalconnectors-schema): `title`, `url`, `iconUrl`. These labels determine which properties are displayed in the experience.
- Add [user activities](/graph/api/externalconnectors-externalitem-addactivities) on your items. or a list of supported activity types, see [externalActivity](/graph/api/resources/externalconnectors-externalactivity). These activities indicate to the platform which users have interacted most recently with which items. Items with activities performed by a given user have a higher likelihood of being displayed to that user in the experience.
- Add a [urlToItemResolver](/graph/api/resources/externalconnectors-urltoitemresolverbase) in [activitySettings](/graph/api/resources/externalconnectors-activitysettings) when you [create your connection](/graph/connecting-external-content-manage-connections#create-a-connection). A `urlToItemResolver` enables the platform to detect when users share URLs from your external content with each other. The experience has a higher likelihood of displaying content that has been shared with that user.
