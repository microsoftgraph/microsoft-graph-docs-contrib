---
title: "cloudPcFrontLineServicePlan resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# cloudPcFrontLineServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcFrontLineServicePlans](../api/virtualendpoint-list-frontlineserviceplans.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) collection|Get a list of the [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) objects and their properties.|
|[Create cloudPcFrontLineServicePlan](../api/virtualendpoint-post-frontlineserviceplans.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md)|Create a new [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.|
|[Get cloudPcFrontLineServicePlan](../api/cloudpcfrontlineserviceplan-get.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md)|Read the properties and relationships of a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.|
|[Update cloudPcFrontLineServicePlan](../api/cloudpcfrontlineserviceplan-update.md)|[cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md)|Update the properties of a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.|
|[Delete cloudPcFrontLineServicePlan](../api/virtualendpoint-delete-frontlineserviceplans.md)|None|Delete a [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|totalCount|Int32|**TODO: Add Description**|
|usedCount|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcFrontLineServicePlan",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFrontLineServicePlan",
  "id": "String (identifier)",
  "displayName": "String",
  "usedCount": "Integer",
  "totalCount": "Integer"
}
```

