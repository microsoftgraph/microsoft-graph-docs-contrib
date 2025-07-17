---
title: "applicationSignInSummary resource type"
description: "Represents an application sign-in summary."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
toc.title: Application sign-in summary (preview)
---

# applicationSignInSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application sign-in summary.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/reportroot-getazureadapplicationsigninsummary.md) | [applicationSignInSummary](applicationsigninsummary.md) | Read the properties and relationships of an **applicationSignInSummary** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String|Name of the application that the user signed into.|
|failedSignInCount|Int64|Count of failed sign-ins made by the application.|
|successPercentage|Int32|Percentage of successful sign-ins made by the application.|
|successfulSignInCount|Int64|Count of successful sign-ins made by the application.|
<!--Hiding this because it's not in the metadata nor in public response objects
|appId|String|  Identifier of the application that the user signed into.|
-->

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSignInSummary"
}-->

```json
{
  "appDisplayName": "String",
  "failedSignInCount": 1024,
  "successPercentage": 1024,
  "successfulSignInCount": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSignInSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


