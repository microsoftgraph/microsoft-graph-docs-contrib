---
title: "accessPackageAutomaticRequestSettings resource type"
description: "Specifies information about an automatic access package assignment."
author: "fsheik"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessPackageAutomaticRequestSettings resource type

Namespace: microsoft.graph

Specifies information about an automatic access package assignment. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodBeforeAccessRemoval|Duration|The duration for which access must be retained before the target's access is revoked once they leave the allowed target scope.|
|removeAccessWhenTargetLeavesAllowedTargets|Boolean|Indicates whether automatic assignment must be removed for targets who move out of the allowed target scope.|
|requestAccessForAllowedTargets|Boolean|If set to `true`, automatic assignments will be created for targets in the allowed target scope.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAutomaticRequestSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAutomaticRequestSettings",
  "requestAccessForAllowedTargets": "Boolean",
  "removeAccessWhenTargetLeavesAllowedTargets": "Boolean",
  "gracePeriodBeforeAccessRemoval": "String (duration)"
}
```

