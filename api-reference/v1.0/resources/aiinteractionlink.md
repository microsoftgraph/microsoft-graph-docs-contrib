---
title: "aiInteractionLink resource type"
description: "Represents the links that appear in an AI interaction."
ms.date: 5/4/2025
doc_type: resourcePageType
ms.localizationpriority: medium
author: "bkeerthivasa"
ms.subservice: "teams"
toc.title: "AI interaction link"
---

# aiInteractionLink resource type

Namespace: microsoft.graph

Represents the links that appear in an AI interaction.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| displayName | String | The name of the link. |
| linkType | String | Information about a link in an app chat or Business Chat (BizChat) interaction. |
| linkUrl | String | The URL of the link. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.aiInteractionLink"
}-->

```json
{
  "displayName": "String",
  "linkType": "String",
  "linkUrl": "String"
}
```
