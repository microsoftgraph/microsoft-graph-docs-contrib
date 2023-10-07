---
title: "ruleConstion resource type"
description: "Include information about an alert rule's conditions."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# ruleThreshold resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Include information about conditions of an [alert rule](devicemanagement-alertrule.md).

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|relationshipType|[microsoft.graph.deviceManagement.realtionshipType](#relationshipType-values)| Indicates the relationship type.  Possible values are: `and`, `or`.|
|conditionCategory|[microsoft.graph.deviceManagement.conditionCategory](#conditionCategory-values)|Indicates the property target of the alert rule condition. Possible values are :  `provisionFailures`,`imageUploadFailures`, `azureNetworkConnectionCheckFailures`,  `cloudPcInGracePeriod`,`frontlineInsufficientLicenses`,`cloudPcConnectionErrors`,`cloudPcHostHealthCheckFailures`,`cloudPcZoneOutage`,`unknownFutureValue`.|
|aggregation|[microsoft.graph.deviceManagement.aggregationType](#aggregationtype-values)|Indicates the built-in aggregation methods. The possible values are: `count`, `percentage`, `affectedCloudPcCount`, `affectedCloudPcPercentage`, `unknownFutureValue`.|
|operator|[microsoft.graph.deviceManagement.operatorType](#operatortype-values)|Indicates the built-in operator. The possible values are: `greaterOrEqual`, `equal`, `greater`, `less`, `lessOrEqual`, `notEqual`, `unknownFutureValue`.|
|thresholdValue|String|Indicates the threshold value of the alert condition. Threshold value could be a number in string form or string like "WestUS".|

### relationshipType values
|Member|Description|
|:---|:---|
|and| Indicates that the alert rule conditions have "and" relationship| 
|or| Indicates that the alert rule conditions have "or" relationship.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

### conditionCategory values

|Member|Description|
|:---|:---|
|provisionFailures| Indicates that the alert rule condition targets provision failures.|
|imageUploadFailures| Indicates that the alert rule condition targets image upload failures.|
|azureNetworkConnectionCheckFailures| Indicates that the alert rule condition targets Azure network connection check failures.|
|cloudPcInGracePeriod| Indicates that the alert rule condition targets Cloud PCs entering grace period state.|
|frontlineInsufficientLicenses| Indicates that the alert rule condition targets Frontline insufficient licenses.|
|cloudPcConnectionErrors| Indicates that the alert rule condition targets Cloud PC connection errors.|
|cloudPcHostHealthCheckFailures| Indicates that the alert rule condition targets Cloud PC host health check failures.|
|cloudPcZoneOutage| Indicates that the alert rule condition targets Cloud PC zone outage.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

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
  "@odata.type": "microsoft.graph.deviceManagement.ruleConsition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.ruleCondition",
  "relationshipType": "String",
  "conditionCategory": "String",
  "aggregation": "String",
  "operator": "String",
  "thresholdValue": "String"
}
```
