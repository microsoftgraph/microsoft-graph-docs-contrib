---
title: "authorizationSystemInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystemInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemType|authorizationSystemType|**TODO: Add Description**.The possible values are: `azure`, `gcp`, `aws`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationSystemInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemInfo",
  "id": "String",
  "displayName": "String",
  "authorizationSystemType": "String"
}
```

