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

