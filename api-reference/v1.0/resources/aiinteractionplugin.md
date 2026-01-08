---
title: "aiInteractionPlugin resource type"
description: "Represents a plugin or extension invoked during an interaction with an AI or bot service."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiInteractionPlugin resource type

Namespace: microsoft.graph

Represents a plugin or extension invoked during an interaction with an AI or bot service.

## Properties

| Property   | Type   | Description                       |
| :--------- | :----- | :-------------------------------- |
| identifier | String | The unique identifier of the plugin. |
| name       | String | The display name of the plugin.   |
| version    | String | The version of the plugin used.   |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aiInteractionPlugin",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.aiInteractionPlugin",
  "identifier": "String",
  "name": "String",
  "version": "String"
}
```
