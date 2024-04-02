---
title: "customClaimBase resource type"
description: "An abstract type for a claim, contains a collection of configurations for a claim."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# customClaimBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This ia an abstract type for a custom claim. It contains a collection of configurations for a claim.

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
