---
title: "Microsoft Search API in Microsoft Graph overview"
description: "Use the Microsoft Search API in Microsoft Graph to extend Microsoft Search to your apps. Query data that Microsoft Search indexes and include custom external data."
ms.localizationpriority: high
ms.prod: "search"
author: "snlraju-msft"
scenarios: "getting-started"
---

# Overview of the Microsoft Search API in Microsoft Graph

Microsoft Search is an enterprise search engine that delivers productivity gains and relevant search results for your organization. It harnesses the collective knowledge and productivity of an organization, and surfaces relevant content to keep end users up to date. Microsoft Search is available in various experiences including Office, SharePoint, Delve, Windows, and Bing. You can use the Microsoft Search API in Microsoft Graph to extend Microsoft Search to your apps.

<!-- markdownlint-disable MD026 -->
## Why use the Microsoft Search API?

### One unified search endpoint for Microsoft cloud data

The Microsoft Search API provides one unified search endpoint that you can use to [query](/graph/api/search-query) data in the Microsoft cloud&mdash;messages and events in Outlook mailboxes and files on OneDrive and SharePoint&mdash;that Microsoft Search already indexes.

### Include custom external data in search experience

Use [Microsoft Graph connectors](/microsoftsearch/connectors-overview) to include data outside of the Microsoft cloud in your search experience. For instance, connect to an organization's human resources database or product catalog. Then use the Microsoft Search API to seamlessly [query](/graph/api/search-query) the external data source.

Browse the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery) to find ready-to-use connectors. Alternatively, you can [build your own connectors](/graph/api/resources/indexing-api-overview#common-use-cases) to index external custom items and query specific external data sources.

### Consistent, up-to-date search experience

When you use the Microsoft Search API, your customers benefit from more personalized, relevant search results powered by Microsoft Graph. The search experience in your apps will return results that are consistent with search in Office applications.

## What data can I add or access by using the Microsoft Search API?

The Microsoft Search API supports searching the following content in the Microsoft cloud: 

- Outlook email [message](/graph/api/resources/message) and calendar [event](/graph/api/resources/event) resources.
- SharePoint and OneDrive files and folders ([driveItem](/graph/api/resources/driveitem) resources), [list](/graph/api/resources/list), [listItem](/graph/api/resources/listitem), [site](/graph/api/resources/site), and [drive](/graph/api/resources/drive) resources.
- [Person](/graph/api/resources/person) resources in an organization who are most relevant to a user.
- Content ingested through the Microsoft Graph connectors platform: [externalItem](/graph/api/resources/externalitem) resources.
- Administrative search answer resources: [acronyms](/graph/api/resources/search-acronym), [bookmarks](/graph/api/resources/search-bookmark), and [QnA](/graph/api/resources/search-qna) resources.

## API reference

Looking for the API reference for this service?

- [Use the Microsoft Search API to query data v1.0](/graph/api/resources/search-api-overview?view=graph-rest-1.0&preserve-view=true)
- [Use the Microsoft Search API to query data beta](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true)
- [Use the Microsoft Search API to index data](/graph/api/resources/indexing-api-overview)
- [Use the Microsoft Search API to manage administrative search answers beta](/graph/api/resources/search-api-answers-overview?view=graph-rest-beta&preserve-view=true) (preview)

## Next steps

- Learn more about [Microsoft Search](/microsoftsearch/).
- Learn more about a few key use cases:
  - [Manage connections to index external content](connecting-external-content-manage-connections.md)
  - [Index external content](connecting-external-content-manage-items.md)
  - [Search Outlook messages](search-concept-messages.md)
  - [Search calendar events](search-concept-events.md)
  - [Search content in SharePoint and OneDrive](search-concept-files.md)
  - [Search external content](search-concept-custom-types.md)
  - [Search with application permissions](search-concept-searchall.md)
  - [Search person](search-concept-person.md) (preview)
  - [Manage administrative search answers](search-concept-answers.md) (preview)
  - [Manage search results layout](search-concept-display-layout.md) (preview)
  - [Refine search results](search-concept-aggregation.md)
  - [Request spelling correction](search-concept-speller.md) (preview)
  - [Sort search results](search-concept-sort.md)
  - [Use query templates](search-concept-query-template.md) (preview)
  - [Trim duplicate search results](search-concept-trim-duplicate.md) (preview)
- Explore the search APIs in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub.
- Engage with the community on [Microsoft Q&A](/answers/products/m365#microsoft-graph) or on GitHub.
