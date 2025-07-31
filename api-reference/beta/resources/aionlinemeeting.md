---
title: "aiOnlineMeeting resource type"
description: "Represents an AI online meeting."
author: "kanchm"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
toc.title: "AI online meeting"
---

# aiOnlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AI online meeting.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| The unique identifier for the AI online meeting. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aiInsights|[callAiInsight](/microsoft-365-copilot/extensibility/api-reference/resources/callaiinsight) collection| A set of AI insights associated with an [AI online meeting](aionlinemeeting.md). |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.aiOnlineMeeting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aiOnlineMeeting",
  "id": "String (identifier)"
}
```
