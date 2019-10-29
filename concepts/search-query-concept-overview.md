---
title: "Search API overview (preview)"
description: "The search API in Graph enables developers to expose search in their apps to access Office 365 data in a unified way"
localization_priority: Priority
ms.prod: "search"
author: "nmoreau"
scenarios: "getting-started"
---

# Search API overview (preview)

Microsoft Search has introduced new organizational search experiences into the applications customers use every day.
The vision is to harness the collective knowledge of your organization in Search and surface relevant content to keep end users up to date and leverage the work of others.  Search is available in the different experiences such as in Office, SharePoint, Delve, Windows and Bing.

## Why use the Microsoft Search and the search API?

The search API in the Microsoft Graph provides a unified search endpoint to access your data. It brings search features to app developers, enabling them to build custom search experience.

### Relevance powered by the the Microsoft Graph

With the search API, you benefit from the latest improvements on relevance. It will expose this relevance in your own app, and therefore make it consistent with how search results show up in Office applications.

### Access new data types from your app

New data types are being introduced in the Microsoft Graph (in particular with Connectors) <!---Link Todo link to Connectors Concept )--> . The search API will expose these new data types.

### Where innovation happens for search

As Microsoft Search expands, the search API will surface these inovations: new relevance models, cross entity ranking, new search features…

## What data can I access by using the query API?

You can search across the following data .

|Office 365 app|Data set|
|:--------|:--------|
|Outlook|[Messages](/graph/api/resources/message?view=graph-rest-1.0)<br/>[Events](/graph/api/resources/event?view=graph-rest-1.0)<br/>|
|Sharepoint |[Files](/graph/api/resources/driveitem?view=graph-rest-1.0)|
|OneDrive Business |[Files](/graph/api/resources/driveitem?view=graph-rest-1.0)|
|Connectors |User defined types [externalItems](/graph/api/resources/driveitem?view=graph-rest-1.0) <!--todo nmoreau fix the link to Connectors page-->|
|Connectors |Well known types [externalFiles](/graph/api/resources/driveitem?view=graph-rest-1.0) <!--todo nmoreau fix the link to Connectors page-->|

## API reference

Looking for the API reference for this service?

- [Search API in Microsoft Graph](/graph/api/resources/search-api-overview)
- [Indexing API in Microsoft Graph (preview)](/graph/api/resources/search-api-overview) 
<!--TODO nmoreau Fix the link to indexing API--->

## Next steps

- Learn more about [Microsoft Search](https://docs.microsoft.com/en-us/microsoftsearch/).
- Explore the search APIs in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Learn more about a few key use cases 
  - [Search for Outlook Messages](./search-concept-messages.md)
  - [Search for Calendar Events](./search-concept-events.md)
  - [Search for Files](./search-concept-files.md)
  - [Search for Connectors User defined types (preview)](./search-concept-custom-types.md)
  - [Search for Connectors Well known types : files (preview)](./search-concept-custom-types.md)

## See also

Engage with the community:

- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-search)
