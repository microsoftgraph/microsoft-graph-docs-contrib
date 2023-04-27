---
title: "alertRecord resource type"
description: "Represents the record of an alert event triggered by a rule."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# alertRecord resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the record of an alert event in the Microsoft Endpoint Manager admin center triggered by an [alertRule](devicemanagement-alertrule.md). 

When the threshold of an **alertRule** is reached, an **alertRecord** is generated and stored, and administrators receive notifications via defined notification channels.

For more information, see the [monitoring](devicemanagement-monitoring.md) resource.

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List alertRecords](../api/devicemanagement-alertrecord-list.md)|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md) collection|Get a list of the [alertRecord](../resources/devicemanagement-alertrecord.md) objects and their properties.|
|[Get alertRecord](../api/devicemanagement-alertrecord-get.md)|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md)|Read the properties and relationships of an [alertRecord](../resources/devicemanagement-alertrecord.md) object.|
|[getPortalNotifications](../api/devicemanagement-alertrecord-getportalnotifications.md)|[microsoft.graph.deviceManagement.portalNotification](../resources/devicemanagement-portalnotification.md) collection|Get a list of all portal notifications that one or more users can access, from the Microsoft Endpoint Manager admin center.|
|[setPortalNotificationAsSent](../api/devicemanagement-alertrecord-setportalnotificationassent.md)|None|Set the status of the specified notification on the Microsoft EndPoint Manager admin center as sent.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertImpact|[microsoft.graph.deviceManagement.alertImpact](../resources/devicemanagement-alertimpact.md)|The impact of the alert event. Consists of a number followed by the aggregation type. For example, `6 affectedCloudPcCount` means that 6 Cloud PCs are affected. `12 affectedCloudPcPercentage` means 12% of Cloud PCs are affected.|
|alertRuleId|String|The corresponding ID of the alert rule.|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](../resources/devicemanagement-alertrule.md#alertruletemplate-values)|The rule template of the alert event. The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`, `cloudPcInGracePeriodScenario`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `cloudPcInGracePeriodScenario`.|
|detectedDateTime|DateTimeOffset|The date and time when the alert event was detected. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The display name of the alert record.|
|id|String|The unique identifier for the alert record. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|The date and time when the alert record was last updated. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|resolvedDateTime|DateTimeOffset|The date and time when the alert event was resolved. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](../resources/devicemanagement-alertrule.md#ruleseveritytype-values)|The severity of the alert event. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|
|status|[microsoft.graph.deviceManagement.alertStatusType](#alertstatustype-values)|The status of the alert record. The possible values are: `active`, `resolved`, `unknownFutureValue`.|

### alertStatusType values

|Member|Description|
|:---|:---|
|active|The alert is active.|
|resolved|The alert is marked as resolved.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement.alertRecord",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.alertRecord",
  "alertImpact": {
    "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
  },  
  "alertRuleId": "String",
  "alertRuleTemplate": "String",
  "detectedDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "resolvedDateTime": "String (timestamp)",
  "severity": "String",
  "status": "String"
}
```
