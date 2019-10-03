---
title: "connection resource type"
description: "A connection to Microsoft Search from an external source."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# connection resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A connection to Microsoft Search from an external source.

## Methods

| Method                                                             | Return Type                                              | Description |
|:-------------------------------------------------------------------|:---------------------------------------------------------|:--|
| [Create connections](../api/external-post-connections.md)          | [connections](connections.md)                            | Create a new connections by posting to the connections collection. |
| [List connections](../api/external-list-connections.md)            | [connections](connections.md) collection                 | Get a connections object collection. |
| [Get connection](../api/connection-get.md)                         | [connection](connection.md)                              | Read properties and relationships of connection object. |
| [Update](../api/connection-update.md)                              | [connection](connection.md)                              | Update connection object. |
| [Delete](../api/connection-delete.md)                              | None                                                     | Delete connection object. |

| [Create externalItem](../api/connection-post-items.md)             | [externalItem](externalitem.md)                          | Create a new externalItem by posting to the items collection. |
| [List items](../api/connection-list-items.md)                      | [externalItem](externalitem.md) collection               | Get a externalItem object collection. |
| [Create connectionOperation](../api/connection-post-operations.md) | [connectionOperation](connectionoperation.md)            | Create a new connectionOperation by posting to the operations collection. |
| [List operations](../api/connection-list-operations.md)            | [connectionOperation](connectionoperation.md) collection | Get a connectionOperation object collection. |

## Properties

| Property      | Type                              | Description |
|:--------------|:----------------------------------|:------------|
| configuration | [configuration](configuration.md) | Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional. |
| description   | String                            | Description of the connection displayed in the Microsoft 365 admin center. Optional. |
| id            | String                            | Developer-provided unique ID of the connection within the Azure Active Directory tenant. Maximum length of 32 characters. Required. |
| name          | String                            | The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required. |

## Relationships

| Relationship | Type                                                     | Description |
|:-------------|:---------------------------------------------------------|:---|
| items        | [externalItem](externalitem.md) collection               | Read-only. Nullable. |
| operations   | [connectionOperation](connectionoperation.md) collection | Read-only. Nullable. |
| schema       | [schema](schema.md)                                      | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connection",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "configuration": {"@odata.type": "microsoft.graph.configuration"},
  "description": "String",
  "id": "String (identifier)",
  "name": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
