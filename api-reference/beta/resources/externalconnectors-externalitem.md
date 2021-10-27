---
title: "externalItem resource type"
description: "An item added to a Microsoft Graph connection."
ms.localizationpriority: medium
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# externalItem resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item added to a Microsoft Graph [connection](externalconnectors-externalconnection.md).

## Methods

| Method                                                        | Return Type                     | Description |
|:--------------------------------------------------------------|:--------------------------------|:--|
| [Create externalItem](../api/externalconnectors-externalconnection-put-items.md) | [externalItem](externalconnectors-externalitem.md) | Create an externalItem. |
| [Get externalItem](../api/externalconnectors-externalitem-get.md)                | [externalItem](externalconnectors-externalitem.md) | Get an externalItem.    |
| [Update externalItem](../api/externalconnectors-externalitem-update.md)          | [externalItem](externalconnectors-externalitem.md) | Update an externalItem. |
| [Delete externalItem](../api/externalconnectors-externalitem-delete.md)          | None                            | Delete an externalItem. |

## Properties

| Property   | Type                     | Description                          |
|:-----------|:-------------------------|:-------------------------------------|
| acl        | [microsoft.graph.externalConnectors.acl](externalconnectors-acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. Required. |
| content    | [microsoft.graph.externalConnectors.externalItemContent](externalconnectors-externalitemcontent.md) | A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional. |
| id         | String                   | Developer-provided unique ID of the item within the containing [externalConnection](externalconnectors-externalconnection.md). Must be alphanumeric and a maximum of 128 characters. Required. |
| properties | Object                   | A property bag with the properties of the item. The properties MUST conform to the [schema](externalconnectors-schema.md) defined for the [externalConnection](externalconnectors-externalconnection.md). Required. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.externalConnectors.externalItem",
  "keyProperty": "id"
}-->

```json
{
  "acl": [
    {
      "type": "everyone",
      "value": "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
      "accessType": "grant",
      "identitySource": "azureActiveDirectory"
    }
  ],
  "id": "String (identifier)",
  "properties": "Object",
  "content": { "@odata.type": "microsoft.graph.externalConnectors.externalItemContent" }
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
    "Error: microsoft.graph.externalConnectors.externalItem/properties:\r\n      Referenced type microsoft.graph.object is not defined in the doc set! Potential suggestion: microsoft.graph.directoryObject"
  ]
}-->
