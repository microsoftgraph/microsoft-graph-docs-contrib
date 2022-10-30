---
title: "applicableContent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# applicableContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

**TODO: Everything below is incorrect. There is a newer schema.**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicableDeviceCount|Int32|**TODO: Add Description**|
|recommendations|[microsoft.graph.windowsUpdates.contentRecommendation](../resources/windowsupdates-contentrecommendation.md) collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalogEntry|[catalogEntry](../resources/windowsupdates-catalogentry.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContent",
  "applicableDeviceCount": "Integer",
  "recommendations": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.contentRecommendation"
    }
  ]
}
```

