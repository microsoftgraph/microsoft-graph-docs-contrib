---
title: "plannerPlanContextDetails resource type"
description: "The **plannerPlanContextDetails** resource contains additional information about a plannerPlanContext."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanContextDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerPlanContextDetails** resource contains additional information about a [plannerPlanContext](plannerplancontext.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customLinkText|String|Nullable. Specifies the text to use in a user experience to display a link the the associated [plannerPlanContext](plannerplancontext.md). If null, applications should display the link with a custom text based on the **displayLinkType** property.|
|displayLinkType|plannerPlanContextType|Specifies how an application should display the link to the associated **plannerPlanContext**. Applications may choose to provide customized text, description, icons, or other experiences based on the type of the link. Possible values are: `teamsTab`, `sharePointPage`, `meetingNotes`, `loopPage`, `project`, `other`, `unknownFutureValue`.|
|url|String|URL of the user experience represented by the associated **plannerPlanContext**. |
|state|plannerContextState| Indicates the state of the associated **plannerPlanContext**. |

### plannerContextState values

|Value              |Description|
|:------------------|:----------------------------------------------------------------------|
|active             | The context has no problems.                                          |
|delinked           | A formerly linked **plannerPlanContext** is no longer linked to the plan. |
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContextDetails"
}-->

```json
{
  "url": "string",
  "customLinkText": "string",
  "displayLinkType": "string",
  "state": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerPlanContextDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


