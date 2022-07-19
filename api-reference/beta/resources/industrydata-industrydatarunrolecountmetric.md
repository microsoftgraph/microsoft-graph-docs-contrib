---
title: "industryDataRunRoleCountMetric resource type"
description: "Represents a count of people in a given role."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataRunRoleCountMetric resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a count of people in a given role.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|Number of people in this role.|
|role|String|The role being measured.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataRunRoleCountMetric"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunRoleCountMetric",
  "count": "Integer",
  "role": "String"
}
```

