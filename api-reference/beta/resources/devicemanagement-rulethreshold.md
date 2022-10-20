---
title: "ruleThreshold resource type"
description: "Represents details about the threshold settings of an alert rule."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# ruleThreshold resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about the threshold settings of an alert rule.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aggregation|[microsoft.graph.deviceManagement.aggregationType](#aggregationtype-values)|Indicates the built-in aggregation methods. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`.|
|operator|[microsoft.graph.deviceManagement.operatorType](#operatortype-values)|Indicates the built-in operator. The possible values are: `greaterOrEqual`, `equal`, `greater`, `less`, `lessOrEqual`, `notEqual`, `unknownFutureValue`.|
|target|Int32|The target threshold value.|

### aggregationType values

|Member|Description|
|:---|:---|
|count|Indicates aggregated data by performing a count on the number of items that match the alert rule conditions.|
|percentage|Indicates a percentage of the items that match the alert rule conditions.|
|affectedCloudPcCount|Indicates the total number of Cloud PCs that meet the alert rule conditions.|
|affectedCloudPcPercentage|Indicates the percentage of Cloud PCs that meet the alert rule conditions.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### operatorType values

|Member|Description|
|:---|:---|
|greaterOrEqual|Indicates that the operator is greater than or equal to the threshold target set by an administrator.|
|equal|Indicates that the operator is equal to the threshold target set by an administrator.|
|greater|Indicates that the operator is greater than the threshold target set by an administrator.|
|less|Indicates that the operator is less than the threshold target set by an administrator.|
|lessOrEqual|Indicates that the operator is less than or equal to the threshold target set by an administrator.|
|notEqual|Indicates that the operator is not equal to the threshold target set by an administrator.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.ruleThreshold"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.ruleThreshold",
  "aggregation": "String",
  "operator": "String",
  "target": "Int32"
}
```
