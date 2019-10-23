---
title: "Use the Microsoft Search indexing REST API"
description: "Microsoft Graph lets your app index custom items or external files in the Microsoft Search service."
localization_priority: Priority
author: "snlraju-msft"
ms.prod: ""
doc_type: conceptualPageType
---

# Use the Microsoft Search indexing REST API (Preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph lets your app add custom items or external files into search results in the [Microsoft Search](/microsoftsearch/overview-microsoft-search) experience.

## Using the indexing API

Indexing API requests are performed on behalf of an application using an [application token](/graph/auth-v2-service).

## Common use cases

The indexing API provides methods to create and configure a connection to the Microsoft Search service, which allows your app to define a schema for the items that will be indexed by that connection. The API also provides methods to add, update, and delete items in the index.

| Use cases                                        | REST resources                              | See also |
|:-------------------------------------------------|:--------------------------------------------|:--|
| **Configuration actions**                        |                                             |   |
| Create, update, or delete a connection           | [externalConnection](externalconnection.md) | [Methods of externalConnection](externalconnection.md#methods) |
| Register a schema                                | [schema](schema.md)                         | [Methods of schema](schema.md#methods) |
| **Indexing actions**                             |                                             |   |
| Add, update or delete a custom item in the index | [externalItem](externalitem.md)             | [Methods of externalItem](externalItem.md#methods) |
| Add, update or delete a file in the index        | [externalFile](externalfile.md)             | [Methods of externalFile](externalfile.md#methods) |

## Known limitations

The indexing API has the following limitations during the preview.

- Organizations are limited to a maximum of 10 connections.
- No support for custom properties when indexing files using the `externalFile` resource.
- Only Azure Active Directory identities are supported.
- Creating `externalItem` or `externalFile` resources is limited to 4 items per second.
- Connections have a capacity limit of 1 million items or ~70 GB of data.
- No support for refining and sorting results.
- Result ranking is best effort.

## Next steps

The indexing API can open up new ways for you to engage with users:

- [Microsoft Search indexing API overview](/graph/search-index-overview)
- Drill down on the methods, properties, and relationships of the [externalConnection](externalconnection.md), [schema](schema.md), [externalItem](externalitem.md), and [externalFile](externalfile.md) resources.
