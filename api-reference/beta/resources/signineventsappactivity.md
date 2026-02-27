---
title: "signInEventsAppActivity resource type"
description: "Represents the summary of sign-in events for a specific application in the past 30 days."
ms.date: 08/18/2025
author: "cumansfi"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# signInEventsAppActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the total number of sign-in events that have occurred for a specific application in the past 30 days.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/auditlogroot-list-signineventsappsummary.md)|[signInEventsAppActivity](../resources/signineventsappactivity.md) collection|Get a list of the signInEventsAppActivity objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|The application ID for the given summary. Supports `$filter` (`eq`).|
|signInCount|Int32|The total number of sign-in events for the given application. Supports `$filter` (`gt`).|
|tenantId|String|The tenant ID where sign-in events occurred.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|application|[application](../resources/application.md)|Represents an application registered in Microsoft Entra ID.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "appId",
  "@odata.type": "microsoft.graph.signInEventsAppActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInEventsAppActivity",
  "appId": "String (identifier)",
  "signInCount": "Integer",
  "tenantId": "String"
}
```

