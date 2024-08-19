---
title: "emergencyCallerInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# emergencyCallerInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|location|[location](../resources/location.md)|**TODO: Add Description**|
|phoneNumber|String|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|upn|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emergencyCallerInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emergencyCallerInfo",
  "displayName": "String",
  "upn": "String",
  "phoneNumber": "String",
  "tenantId": "String",
  "location": {
    "@odata.type": "microsoft.graph.location"
  }
}
```

