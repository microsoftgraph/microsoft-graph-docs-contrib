---
title: "chatMessageCitationSensitivityLabel resource type"
description: "Represents the sensitivity label applied to the source cited by a chat message citation."
author: "RamjotSingh"
doc_type: resourcePageType
ms.localizationpriority: medium
ms.subservice: "teams"
ms.date: 07/29/2026
---
# chatMessageCitationSensitivityLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sensitivity label applied to the source cited by a [chatMessageCitation](chatmessagecitation.md). Provides the display name and description of the sensitivity classification so that consumers can surface the appropriate handling guidance.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|description|String|Read-only. User-facing description of the sensitivity restriction.|
|displayName|String|Read-only. Display name of the sensitivity label.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMessageCitationSensitivityLabel"
}-->

```json
{
  "description": "String",
  "displayName": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "chat message citation sensitivity label resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
