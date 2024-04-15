---
title: "alertImpact resource type"
description: "Represents the impact of an alert event."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
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
|alertImpactDetails|[keyValuePair](../resources/keyvaluepair.md) collection|The detail information of the impact. For example, if the _Frontline Cloud PCs near concurrency limit_ alert is triggered, the details contain the impacted Frontline license SKU name, such as `Windows 365 Frontline 2 vCPU/8GB/128GB`, and the corresponding impacted value. |
|aggregationType|[microsoft.graph.deviceManagement.aggregationType](../resources/devicemanagement-ruleThreshold.md#aggregationtype-values)|The aggregation type of the impact. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`. |
|value|Int32|The number value of the impact. For the aggregation types of `count` and `affectedCloudPcCount`, the value indicates the number of affected instances. For example, `6 affectedCloudPcCount` means that six Cloud PCs are affected. For the aggregation types of `percentage` and `affectedCloudPcPercentage`, the value indicates the percent of affected instances. For example, `12 affectedCloudPcPercentage` means that 12% of Cloud PCs are affected. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.alertImpact",
  "alertImpactDetails": [{"@odata.type": "microsoft.graph.security.keyValuePair"}],
  "aggregationType": "String",
  "value": "Int32"
}
```
