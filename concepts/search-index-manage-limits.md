---
title: "Connection System Limits in the Microsoft Graph"
description: "Learn how to use Microsoft Graph following system limits in connections"
localization_priority: Priority
author: "rsamai"
ms.prod: "search"
doc_type: conceptualPageType
---

# Connection System Limits in the Microsoft Graph
## Connection limits
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **10 connections**         | Max number of connections per Microsoft 365 tenant                     |
| **700,000 items**         | Max number of items per connection                               |
| **70 GB**      |Max byte size of a connection      |

<br/><br/>
## Schema limits

| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **128 properties**         | Max number of properties                     |

<br/><br/>

## Group limits
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **128 chracters**         | Id name length. Must be unique within the connection. Only alpha numeric characters are supported.         |
| **1000 requests/sec**         | Group administration APIs throttling                                        |

<br/><br/>

## Item ingestion
| Limit             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **4 items/sec (250 MB/hour)**         | Ingestion throughput                     |
| **4 MB**         | Max size of item ingested request body                               |
| **N/A**      |Max size of a property      |

<br/><br/>

## Next steps

- [Review the Graph Connectors API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true)
- [Overview for Microsoft Graph Connectors](/microsoftsearch/connectors-overview)
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub
