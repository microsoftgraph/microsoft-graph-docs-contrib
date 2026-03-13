---
title: "aiInteractionPlugin resource type"
description: "This is a plugin or extension used in an interaction with an AI or bot service."
author: "PatilAishwarya95"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiInteractionPlugin resource type

Namespace: microsoft.graph

Represents a plugin or extension invoked during an interaction with an AI or bot service.

Inherits from [aiInteractionEntity](../resources/aiinteractionentity.md).

## Properties

| Property   | Type   | Description                                                                                                     |
| :--------- | :----- | :-------------------------------------------------------------------------------------------------------------- |
| identifier | String | The unique identifier of the plugin. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md). |
| name       | String | The display name of the plugin. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |
| version    | String | The version of the plugin used. Inherited from [aiInteractionEntity](../resources/aiinteractionentity.md).      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aiInteractionPlugin",
  "baseType": "microsoft.graph.aiInteractionEntity"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.aiInteractionPlugin",
  "identifier": "String",
  "name": "String",
  "version": "String"
}
```