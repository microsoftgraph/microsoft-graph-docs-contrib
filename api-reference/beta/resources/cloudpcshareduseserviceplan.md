---
title: "cloudPcSharedUseServicePlan resource type (deprecated)"
description: "Represents a shared-use service plan available for use by up to three Cloud PCs."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSharedUseServicePlan resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **cloudPcSharedUseServicePlan** resource is deprecated and stopped returning data on April 24, 2024. Going forward, use the [cloudPcFrontLineServicePlan](../resources/cloudpcfrontlineserviceplan.md).

Represents a shared-use service plan available for use by up to three Cloud PCs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSharedUseServicePlans](../api/virtualendpoint-list-shareduseserviceplans.md)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) collection|Get a list of the [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) objects and their properties.|
|[Get cloudPcSharedUseServicePlan](../api/cloudpcshareduseserviceplan-get.md)|[cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md)|Read the properties and relationships of a [cloudPcSharedUseServicePlan](../resources/cloudpcshareduseserviceplan.md) object.|

## Properties

| Property    | Type   | Description                                                         |
|:------------|:-------|:--------------------------------------------------------------------|
| displayName | String | The display name of the shared-use service plan.                    |
| id          | String | The unique identifier for the shared-use service plan.              |
| totalCount  | Int32  | Total number of shared-use service plans purchased by the customer. |
| usedCount   | Int32  | The number of service plans that the account uses.                  |

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
  "displayName": "String",
  "id": "String (identifier)",
  "usedCount": "Int32",
  "totalCount": "Int32"
}
```
