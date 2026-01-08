---
title: "planUsageRight resource type"
description: "Represents the usage rights evaluation result for a Microsoft Planner plan based on its sensitivity label assignment."
author: "ankku"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planUsageRight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the usage rights evaluation result for a Microsoft Planner plan based on its sensitivity label assignment. This resource provides information about whether a plan has a sensitivity label applied and which specific permissions the requesting user has on the plan content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hasSensitivityLabel|Boolean|Indicates whether the plan has a sensitivity label applied. If `true`, the plan has a sensitivity label assignment; if `false`, no sensitivity label is applied.|
|planId|String|The unique identifier of the plan for which usage rights are under evaluation.|
|usageRights|[usageRightsInfo](../resources/usagerightsinfo.md)|The detailed usage rights information for the requesting user on the plan. This property is `null` when no sensitivity label is applied to the plan. Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.planUsageRight"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planUsageRight",
  "hasSensitivityLabel": "Boolean",
  "planId": "String",
  "usageRights": {"@odata.type": "microsoft.graph.usageRightsInfo"}
}
```
