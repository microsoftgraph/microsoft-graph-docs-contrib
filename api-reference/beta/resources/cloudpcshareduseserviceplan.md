---
title: "cloudPcSharedUseServicePlan resource type"
description: "Represents a Cloud PC shared use service plan."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSharedUseServicePlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud PC shared use service plan.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSharedUseServicePlans](../api/virtualendpoint-list-shareduseserviceplans.md)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) collection|Get a list of the [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) objects and their properties.|
|[Get cloudPcSharedUseServicePlan](../api/cloudpcshareduseserviceplan-get.md)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md)|Read the properties and relationships of a [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of shared-use service plan.|
|id|String|The unique ID of shared-use service plan.|
|totalCount|Int32|Total number of shared-use service plans purchased by customer.|
|usedCount|Int32|Indicates the number of service plans that are in use for the account.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSharedUseServicePlan",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSharedUseServicePlan",
  "id": "String (identifier)",
  "displayName": "String",
  "usedCount": "Integer",
  "totalCount": "Integer"
}
```