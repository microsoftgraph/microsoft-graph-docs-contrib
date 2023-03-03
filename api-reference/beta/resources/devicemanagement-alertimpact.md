---
title: "alertImpact resource type"
description: "Represents the impact of an alert event."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# alertImpact resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the impact of an alert event.

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aggregationType|[microsoft.graph.deviceManagement.aggregationType](../resources/devicemanagement-ruleThreshold.md#aggregationtype-values)|The aggregation type of the impact. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`. |
|value|Int32|The number value of the impact. For the aggregation types of `count` and `affectedCloudPcCount`, the value indicates the number of affected instances. For example, `6 affectedCloudPcCount` means that 6 Cloud PCs are affected. For the aggregation types of `percentage` and `affectedCloudPcPercentage`, the value indicates the percent of affected instances. For example, `12 affectedCloudPcPercentage` means that 12% of Cloud PCs are affected. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.alertImpact",
  "aggregationType": "String",
  "value": "Int32"
}
```
