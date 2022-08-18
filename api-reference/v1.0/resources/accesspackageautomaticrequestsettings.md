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

Specifies if automatic assignments should be enabled, specify grace period before removal and if targets must be removed if they longer match the membership rule specified under `specificAllowedTargets` setting of an [access package assignment policy](accesspackageassignmentpolicy.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodBeforeAccessRemoval|Duration|The number of days once a target leaves the allowed target scope that their automatic assignment will be retained before their assignment is ended.|
|removeAccessWhenTargetLeavesAllowedTargets|Boolean|If set to true, then when a target leaves the allowed target scope, their automatic assignment will be ended.|
|requestAccessForAllowedTargets|Boolean|If set to true, then automatic assignments will be created for targets in the allowed target scope.|

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
  "requestAccessForAllowedTargets": "Boolean"
}
```

