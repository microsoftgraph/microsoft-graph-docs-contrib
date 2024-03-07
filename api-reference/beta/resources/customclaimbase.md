---
title: "customClaimBase resource type"
description: "An abstract type for a claim, contains a collection of configurations for a claim."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customClaimBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type for a claim, contains a collection of configurations for a claim.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurations|[customClaimConfiguration](../resources/customclaimconfiguration.md) collection|One or more configurations that describe how the claim is sourced and under what conditions.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customClaimBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaimBase",
  "configurations": [
    {
      "@odata.type": "microsoft.graph.customClaimConfiguration"
    }
  ]
}
```
