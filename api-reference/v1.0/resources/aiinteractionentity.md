---
title: "aiInteractionEntity resource type"
description: "Use this base type when interacting with AI entities. It provides common properties such as an identifier, name, and version."
author: "PatilAishwarya95"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# aiInteractionEntity resource type

Namespace: microsoft.graph

Represents the base type for interacting with AI entities that provide common properties such as an identifier, name, and version.

Base type of [aiAgentInfo](../resources/aiagentinfo.md) and [aiInteractionPlugin](../resources/aiinteractionplugin.md).

## Properties

| Property   | Type   | Description                             |
| :--------- | :----- | :-------------------------------------- |
| identifier | String | The unique identifier of the AI entity. |
| name       | String | The display name of the AI entity.      |
| version    | String | The version of the AI entity used.      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aiInteractionEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aiInteractionEntity",
  "identifier": "String",
  "name": "String",
  "version": "String"
}
```

