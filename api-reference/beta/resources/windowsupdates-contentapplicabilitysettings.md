---
title: "contentApplicabilitySettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# contentApplicabilitySettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|offerWhileRecommendedBy|String collection|**TODO: Add Description**|
|safeguard|[microsoft.graph.windowsUpdates.safeguardSettings](../resources/windowsupdates-safeguardsettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApplicabilitySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApplicabilitySettings",
  "safeguard": {
    "@odata.type": "microsoft.graph.windowsUpdates.safeguardSettings"
  },
  "offerWhileRecommendedBy": [
    "String"
  ]
}
```

