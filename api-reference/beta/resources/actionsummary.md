---
title: "actionSummary resource type"
description: "Contains information on the number of authorization system actions that have been granted to an identity and the number of actions executed by this identity in the last 90 days."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# actionSummary resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This will contain information on the number of authorization system actions that have been granted to an identity and the number of actions executed by this identity in the last 90 days.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigned|Int32|This is the number of authorization system actions that have been assigned to the identity.|
|available|Int32|This is the number of authorization system actions that the identity has exercised in the last 90 days.|
|exercised|Int32|This is the maximum number of actions that are available in the authorization system.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionSummary",
  "assigned": "Integer",
  "exercised": "Integer",
  "available": "Integer"
}
```
