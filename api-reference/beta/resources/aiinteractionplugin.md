---
title: "aiInteractionPlugin resource type"
description: "Represents a plugin or extension invoked during an interaction with an AI or bot service."
author: "PatilAishwarya95"
ms.date: 10/05/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiInteractionPlugin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
