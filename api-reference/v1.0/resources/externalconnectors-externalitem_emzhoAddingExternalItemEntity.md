---
title: "externalItem resource type"
description: "An item added to a Microsoft Graph connection."
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalItem resource type

Namespace: microsoft.graph.externalConnectors

An item added to a Microsoft Graph connection. This resource is currently used only for [Microsoft Search query API](searchrequest.md).

## Properties
|Property|Description|
|:---|:---|
| content    | A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional. |
| id         | Developer-provided unique ID of the item within the containing externalConnection. Must be alphanumeric and a maximum of 128 characters. Required. |
| properties | A property bag with the properties of the item. Required. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalItem",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "properties": {},
  "content": {}
}
```

