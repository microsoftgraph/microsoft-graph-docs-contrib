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

## Schema limits

## Group limits

## Item ingestion


| State             | Description                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Draft**         | An empty connection is provisioned. The data source, schema, or any settings have not been configured yet.                                                |
| **Ready**         | The connection is provisioned with registered schema and is ready for ingestion.                                                                          |
| **Obsolete**      | This occurs when a dependent feature, such as an API, has been deprecated. Deleting the connection is the only valid operation.                           |
| **LimitExceeded** | If you hit the maximum limit of a single connection or the tenant level quota across all connections, you cannot add more items until you exit the state. |


## Next steps

- [Register the connection schema](/graph/concepts/search-index-manage-schema.md)
- [Review the Graph Connectors API reference](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true)
- [Overview for Microsoft Graph Connectors](/microsoftsearch/connectors-overview)
- Download the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub
