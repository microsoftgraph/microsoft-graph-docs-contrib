---
title: "cloudPcLaunchInfo resource type"
description: "Represents the Cloud PC launch info"
author: "andrewku0409"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcLaunchInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC launch info

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The unique identifier of the Cloud PC.|
|cloudPcLaunchUrl|String|The launch url of the Cloud PC|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcLaunchInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcLaunchInfo",
  "cloudPcId": "String",
  "cloudPcLaunchUrl": "String"
}
```

