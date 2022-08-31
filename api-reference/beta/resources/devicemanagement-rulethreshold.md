---
title: "ruleThreshold resource type"
description: "Includes information about an alert rule's threshold settings."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# ruleThreshold resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Includes information about an alert rule's threshold settings.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|aggregation|[microsoft.graph.deviceManagement.aggregationType](#aggregationtype-values)|Indicates the built-in aggregation methods. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`.|
|operator|[microsoft.graph.deviceManagement.operatorType](#operatortype-values)|Indicates the built-in operator. The possible values are: `greaterOrEqual`, `equal`, `greater`, `less`, `lessOrEqual`, `notEqual`, `unknownFutureValue`.|
|target|Int32|Target threshold value.|

### aggregationType values

|Member|Description|
|:---|:---|
|count|Indicates the data is aggregated by performing a count on the number of items matching the alert rule conditions.|
|percentage|Indicates the data is shown as a percentage of items matching the alert rule conditions.|
|affectedCloudPcCount|Indicates the total number of Cloud PC's that meet the alert rule conditions.|
|affectedCloudPcPercentage|Indicates the percentage of Cloud PC's that meet the alert rule conditions.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

### operatorType values

|Member|Description|
|:---|:---|
|greaterOrEqual|Indicates the operator is >=|
|equal|Indicates the operator is =|
|greater|Indicates the operator is >|
|less|Indicates the operator is <|
|lessOrEqual|Indicates the operator is <=|
|notEqual|Indicates the operator is !=|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

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
  "target": "Integer"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.deviceManagement"
}
-->