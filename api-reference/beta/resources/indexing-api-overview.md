---
title: "Use the Microsoft Search API to index data"
description: "Use Microsoft Graph to index custom items or external files in the Microsoft Search service."
localization_priority: Priority
author: "snlraju-msft"
ms.prod: "search"
doc_type: conceptualPageType
---

# Use the Microsoft Search API to index data

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use Microsoft Graph to add custom items or external files to search results in the [Microsoft Search](/microsoftsearch/overview-microsoft-search) experience.

Requests to index data are performed on behalf of an application without the presence of a signed-in user, identified using an [access token with application permission](/graph/auth-v2-service).

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Common use cases

The use cases for the APIs in this section involve building [Microsoft Graph connectors](/microsoftsearch/connectors-overview), which involves the following primary steps:

1. [Create a connection](../api/external-post-connections.md) to an external data source.
2. [Create and register a schema](../api/externalconnection-post-schema.md) that describes the type and how to index the external data.
3. [Index the data](../api/externalconnection-put-items.md) as an external item or external file.

| Use cases                                        | REST resources                              | See also |
|:-------------------------------------------------|:--------------------------------------------|:--|
| **Configuration actions**                        |                                             |   |
| Create, update, or delete a connection           | [externalConnection](externalconnection.md) | [externalConnection methods](externalconnection.md#methods) |
| Register a schema for the external data          | [schema](schema.md)                         | [schema methods](schema.md#methods) |
| **Indexing actions**                             |                                             |   |
| Add, update or delete a custom item in the index | [externalItem](externalitem.md)             | [externalItem methods](externalItem.md#methods) |
| Add, update or delete a file in the index        | [externalFile](externalfile.md)             | [externalFile methods](externalfile.md#methods) |

## Known limitations

The following are current knownlimitations:

- Organizations are limited to a maximum of 10 connections.
- Custom properties are not supported when indexing files using the `externalFile` resource.
- Only Azure Active Directory identities are supported.
- You can create only four `externalItem` or `externalFile` resources items per second.
- An application is limited to four concurrent operations on a connection.
- Connections have a capacity limit of 700,000 items or ~70 GB of data.
- Maximum size of an `externalItem` or `externalFile` entity is 4 MB.
- Refining and sorting results is not supported.
- Result ranking is best effort.

## Next steps

- See the [Microsoft Search API overview](/graph/search-concept-overview).
- Drill down on the methods, properties, and relationships of the [externalConnection](externalconnection.md), [schema](schema.md), [externalItem](externalitem.md), and [externalFile](externalfile.md) resources.
- Check out the [sample search connector](https://github.com/microsoftgraph/msgraph-search-connector-sample) from GitHub.
