---
title: "Graph connector system limits"
description: "Learn how to use Microsoft Graph following system limits in connections"
author: mecampos
ms.author: mecampos # Microsoft employees only
#ms.date: {@date}
ms.topic: article
localization_priority: Priority
ms.prod: "search"
doc_type: conceptualPageType
---

# Microsoft Graph connectors limits

This topic describes implementation and operational limits for Microsoft Graph connectors. Keep these limits in mind when designing connectors.

## Connection limits
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **10 connections**         | The maximum number of [connections](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true) per Microsoft 365 tenant.                     |
| **700,000 items**         | The maximum number of [items](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) per connection.                               |
| **70 GB**      | The maximum byte size of a connection      |

<br/><br/>
## Schema limits

| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **128 properties**         | The maximum number of properties that can be defined in a [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true), characterizing the data ingested through a connection.                     |

<br/><br/>

## Group limits
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **128 characters**         | The maximum length of the ID string of an [external group](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true). Must be unique within a connection. Only alpha-numeric characters are supported.         |
| **1000 requests/sec**         | Group administration APIs throttling                                        |
<!--- Please explain what you mean by "group administration APIs". You can link to the API set, or give an example of an API and link to it. As is, the description is too vague and broad, and not helpful.--->
<br/><br/>

## Item ingestion
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **4 items/sec (250 MB/hour)**         | The throughput limit to ingest items through a connection.                     |
| **4 MB**         | The maximum size of an item; this limit applies to the request body when [ingesting and indexing an item](/graph/api/externalconnection-put-items?view=graph-rest-beta&preserve-view=true).                               |
| **N/A**      |The maximum size of a property.      |

<br/><br/>

## Next steps

- [Overview for Microsoft Graph Connectors](/microsoftsearch/connectors-overview)
- [Review the Graph connectors API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true) <!--We haven't exposed the indexing API as the connectors API anywhere else in the docs.Also, in general, FYI, if you need to refer to Microsoft Graph, you cannot just say "Graph". "Microsoft Graph" is a branded name and just referring to it as "Graph" weakens the brand. Please change that line/ link text to: "Use Microsoft Graph connectors to index external data sources"---->
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub