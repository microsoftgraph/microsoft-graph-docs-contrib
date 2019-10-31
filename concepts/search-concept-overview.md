---
title: "Search API overview (preview)"
description: "Learn about using the indexing API to index content and the search API to add search across your Office 365 & indexed content into your apps."
localization_priority: Priority
ms.prod: "search"
author: "snlraju-msft"
scenarios: "getting-started"
---

# Search overview (preview)

Microsoft Search is an enterprise search engine that delivers productivity gains and relevant search results for your organization. Microsoft Search's vision is to harness the collective knowledge of your organization in Search and surface relevant content to keep end users up to date and leverage the work of others. Search is available in the different experiences such as in Office, SharePoint, Delve, Windows and Bing.

<!-- markdownlint-disable MD026 -->
## Why use the search API?

The search API in the Microsoft Graph provides a unified search endpoint to access your data. It brings search features to app developers, enabling them to build custom search experiences. With the search API, your apps would benefit from the latest improvements in relevance powered by the Microsoft Graph that will let search in your apps be consistent with search in Office applications.

## Why use the indexing API?

Microsoft Search already indexes your content in the Microsoft 365 cloud (such as files in your SharePoint and OneDrive and messages and events in Exchange). You can extend Microsoft Search to index your own data sources (such as an internal Human Resources application, or a catalog of products) by adding your external content on [Microsoft Graph](overview.md). This allows users to search for items inside those different systems from within the Microsoft Search experience.

## What data can I add or access by using these APIs?

You can index external content: [externalItems](/graph/api/resources/driveitem?view=graph-rest-beta) (custom type) and [externalFiles](/graph/api/resources/driveitem?view=graph-rest-beta) (well-known type) using the indexing API. You can search for content from Outlook ([messages](/graph/api/resources/message?view=graph-rest-beta), [events](/graph/api/resources/event?view=graph-rest-beta)), SharePoint and OneDrive ([files](/graph/api/resources/driveitem?view=graph-rest-beta)) in addition to external content using the search API.

## API reference

Looking for the API reference for this service?

- [Search API in Microsoft Graph (preview)](/graph/api/resources/search-api-overview?view=graph-rest-beta)
- [Indexing API in Microsoft Graph (preview)](/graph/api/resources/indexing-api-overview?view=graph-rest-beta)

## Next steps

- Learn more about [Microsoft Search](https://docs.microsoft.com/en-us/microsoftsearch/).
- Learn more about a few key use cases:
  - [Search for Outlook messages](search-concept-messages.md)
  - [Search for calendar events](search-concept-events.md)
  - [Search for files](search-concept-files.md)
  - [Manage connections to index external content (preview)](search-index-manage-connections.md)
  - [Index external content (preview)](search-index-manage-items.md)
  - [Search for indexed content: externalItems (preview)](search-concept-custom-types.md)
  - [Search for indexed content : externalFiles (preview)](search-concept-custom-types.md)
- Explore the search APIs in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub.

## See also

Engage with the community:

- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-search)
