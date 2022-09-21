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

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aggregationType|[microsoft.graph.deviceManagement.aggregationType](../resources/devicemanagement-ruleThreshold.md#aggregationtype-values)|The aggregation type of the impact. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`.|
|value|Int32|The number value of the impact.|

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
