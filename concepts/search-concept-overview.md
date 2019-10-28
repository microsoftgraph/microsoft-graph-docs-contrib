---
title: "Microsoft Search query API overview (preview)"
description: "Microsoft Search query API in Graph enables developers to search their data within Office 365 in a unified way"
localization_priority: Priority
ms.prod: "search"
author: "nmoreau"
scenarios: "getting-started"
---

# Microsoft Search query API overview (preview) 

Microsoft Search has introduced new organizational search experiences into the applications customers use every day.
The vision is to harness the collective knowledge of your organization in Search and surface relevant content to keep end users up to date and leverage the work of others.  Search is available in the different experiences such as in Office, SharePoint, Delve, Windows and Bing.

## Why use the Microsoft Search API?

Microsoft Search query API in Graph provides a unified search endpoint to search across your data. It brings search features to app developers, enabling them to build custom search experience.

### Relevance powered by the Microsoft Graph

With Microsoft Search, you benefit from the latest improvements on relevance. The Search query API will expose this relevance in your own app, and therefore make it consistent with how search results show up in Office applications.

### Access new data types from your app

New data types are being introduced in graph (in particular with Connectors) <!---Link Todo link to Connectors Concept )--> . The universal search query endpoint will expose these new data types.

### Where innovation happens

As Microsoft Search expands, the query API will be where new innovations will surface: new relevance models, cross entity ranking, new search features…

## What data can I access by using the reports API?

You can use data sets listed in the following table.

|Office 365 app|Data set|
|:--------|:--------|
|Outlook|[Messages](/graph/api/resources/message?view=graph-rest-1.0)<br/>[Events](graph/api/resources/event?view=graph-rest-1.0)<br/>|
|Sharepoint |[Files](/graph/api/resources/driveitem?view=graph-rest-1.0)|
|OneDrive Business |[Files](/graph/api/resources/driveitem?view=graph-rest-1.0)|
|Connectors |User defined types [externalItems](/graph/api/resources/driveitem?view=graph-rest-1.0) <!--todo nmoreau fix the link to Connectors page-->|
|Connectors |Well known types [externalFiles](/graph/api/resources/driveitem?view=graph-rest-1.0) <!--todo nmoreau fix the link to Connectors page-->|

## API reference

Looking for the API reference for this service?

- [Microsoft Search query API in Microsoft Graph Beta](/graph/api/resources/search-api-overview)
- [Microsoft Search indexing API in Microsoft Graph Beta](/graph/api/resources/search-api-overview) 
<!--TODO nmoreau Fix the link to indexing API--->

## Next steps

- Explore the APIs in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Learn more about a few key use cases 
  - [Search for Outlook Messages](./search-concept-messages.md)
  - [Search for Calendar Events](./search-concept-events.md)
  - [Search for Files](./search-concept-files.md)
  - [Search for Connectors User defined types](./search-concept-custom-types.md)
  - [Search for Connectors Well known types (files)](./search-concept-custom-types.md)

## See also

Engage with the community:

- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-search)
