---
title: "bucketCapability resource type"
description: "Server-computed, read-only capability flags indicating which optional features are enabled for a bucket."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# bucketCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **capabilities** property of the [bucket](bucket.md) resource uses this type.

Server-computed, read-only capability flags indicating which optional features are enabled for a [bucket](bucket.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|extensions|Boolean|Indicates whether custom extension fields are enabled for the bucket.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bucketCapability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bucketCapability",
  "extensions": "Boolean"
}
```

