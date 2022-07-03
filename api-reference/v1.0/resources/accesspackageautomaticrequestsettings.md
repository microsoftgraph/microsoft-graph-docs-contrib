---
title: "accessPackageAutomaticRequestSettings resource type"
description: "Specifies if automatic assignments should be enabled, specify grace period before removal and if targets must be removed if they longer match the membership rule specified under `specificAllowedTargets` setting of the access package policy."
author: "fsheik"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAutomaticRequestSettings resource type

Namespace: microsoft.graph

Specifies if automatic assignments should be enabled, specify grace period before removal and if targets must be removed if they longer match the membership rule specified under `specificAllowedTargets` setting of the access package policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodBeforeAccessRemoval|Duration|The number of days access must be retained before the target's access is revoked once they leave the allowed target scope.|
|removeAccessWhenTargetLeavesAllowedTargets|Boolean|Indicates whether automatic assignment must be removed for targets who move out of the allowed target scope.|
|requestAccessForAllowedTargets|Boolean|Indicates whether automatic assignments must happen for allowed targets.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

