---
title: "classGroupConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# classGroupConfiguration resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalAttributes|microsoft.graph.industryData.additionalClassGroupAttributes collection|**TODO: Add Description**|
|additionalOptions|[microsoft.graph.industryData.additionalClassGroupOptions](../resources/industrydata-additionalclassgroupoptions.md)|**TODO: Add Description**|
|enrollmentMappings|[microsoft.graph.industryData.enrollmentMappings](../resources/industrydata-enrollmentmappings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.classGroupConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.classGroupConfiguration",
  "additionalAttributes": [
    "String"
  ],
  "additionalOptions": {
    "@odata.type": "microsoft.graph.industryData.additionalClassGroupOptions"
  },
  "enrollmentMappings": {
    "@odata.type": "microsoft.graph.industryData.enrollmentMappings"
  }
}
```

