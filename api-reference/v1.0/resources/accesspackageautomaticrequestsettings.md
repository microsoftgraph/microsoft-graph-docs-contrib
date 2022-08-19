---
title: "accessPackageAutomaticRequestSettings resource type"
description: "Specifies information about an automatic access package assignment."
author: "fsheik"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAutomaticRequestSettings resource type

Namespace: microsoft.graph

Specifies information about an automatic access package assignment. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gracePeriodBeforeAccessRemoval|Duration|The number of days that an automatic assignment will be retained before the assignment is ended after a target leaves the allowed target scope.|
|removeAccessWhenTargetLeavesAllowedTargets|Boolean|If set to `true`, when a target leaves the allowed target scope, the automatic assignment will be ended.|
|requestAccessForAllowedTargets|Boolean|If set to `true`, automatic assignments will be created for targets in the allowed target scope.|

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

