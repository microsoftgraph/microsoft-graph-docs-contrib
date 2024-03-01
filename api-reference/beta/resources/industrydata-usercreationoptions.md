---
title: "userCreationOptions resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# userCreationOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurations|[microsoft.graph.industryData.userConfiguration](../resources/industrydata-userconfiguration.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userCreationOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.userCreationOptions",
  "configurations": [
    {
      "@odata.type": "microsoft.graph.industryData.userConfiguration"
    }
  ]
}
```

