---
title: "externalItem resource type"
description: "An item indexed via a Microsoft Search connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# externalItem resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item indexed via a Microsoft Search [connection](connection.md).

## Methods

| Method                                                 | Return Type                                | Description |
|:-------------------------------------------------------|:-------------------------------------------|:--|
| [Create externalItem](../api/connection-post-items.md) | [externalItem](externalitem.md)            | Create an externalItem. |
| [List externalItems](../api/connection-list-items.md)  | [externalItem](externalitem.md) collection | List externalItems |
| [Get externalItem](../api/externalitem-get.md)         | [externalItem](externalitem.md)            | Read properties of an externalItem. |
| [Update externalItem](../api/externalitem-update.md)   | [externalItem](externalitem.md)            | Update an externalItem. |
| [Delete externalItem](../api/externalitem-delete.md)   | None                                       | Delete an externalItem. |

## Properties

| Property   | Type                     | Description                          |
|:-----------|:-------------------------|:-------------------------------------|
| acl        | [acl](acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. |
| content    | String                   | A plain-text representation of the contents of the item. |
| id         | String                   | Developer-provided unique ID  of the item. Required. |
| properties | Object                   | A property bag with the properties of the item. The properties MUST conform to the [schema](schema.md) defined for the [connection](connection.md). |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalItem",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "acl": [{"@odata.type": "microsoft.graph.acl"}],
  "content": "String",
  "id": "String (identifier)",
  "properties": "Object"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.externalItem/properties:\r\n      Referenced type microsoft.graph.object is not defined in the doc set! Potential suggestion: microsoft.graph.directoryObject"
  ]
}-->
