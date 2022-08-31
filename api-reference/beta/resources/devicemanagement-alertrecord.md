---
title: "alertRecord resource type"
description: "Represents the record of an alert event triggered by the rule."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# alertRecord resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity represents the record of an alert event triggered by the rule. When an alert rule's threshold is reached, a record of the alert event will be generated and stored, and admins will receive notifications via defined notification channels.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List alertRecords](../api/devicemanagement-alertrecord-list.md)|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md) collection|Get a list of the [alertRecord](../resources/devicemanagement-alertrecord.md) objects and their properties.|
|[Get alertRecord](../api/devicemanagement-alertrecord-get.md)|[microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md)|Read the properties and relationships of an [alertRecord](../resources/devicemanagement-alertrecord.md) object.|
|[getPortalNotifications](../api/devicemanagement-alertrecord-getportalnotifications.md)|[microsoft.graph.deviceManagement.portalNotification](../resources/devicemanagement-portalnotification.md) collection|View a list of all portal notifications that are ready to be consumed for current user. The portal notifications can be used to publish MEM portal notifications.|
|[setPortalNotificationAsSent](../api/devicemanagement-alertrecord-setportalnotificationassent.md)|None|Set a single portal notification status to published. Will set isPortalNotificationSent property to true for current user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertImpact|[microsoft.graph.deviceManagement.alertImpact](../resources/devicemanagement-alertimpact.md)|The impact of the alert event. Consists of a number followed by the aggregation type. For example: 6 Count, 12 AffectedCloudPcPercentage, etc|
|alertRuleId|String|The corresponding alert rule id.|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](../resources/devicemanagement-alertrule.md#alertruletemplate-values)|The rule template of the alert event.The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`.|
|detectedDateTime|DateTimeOffset|The alert event detected time. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|displayName|String|The display name of the alert record.|
|id|String|The alert record id. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|The last updated time of the alert record. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|resolvedDateTime|DateTimeOffset|The resolved time if alert event is resolved. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](../resources/devicemanagement-alertrule.md#ruleseveritytype-values)|The severity of the alert event. Possible values are informational, warning, critical, unknown and unknownFutureValue. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|
|status|[microsoft.graph.deviceManagement.alertStatusType](#alertstatustype-values)|The status of the alert record. Possible values are: active, resolved and unknownFutureValue .The possible values are: `active`, `resolved`, `unknownFutureValue`.|

### alertStatusType values

|Member|Description|
|:---|:---|
|active|Alert is active.|
|resolved|Alert is marked as resolved.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

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
  "id": "String (identifier)",
  "displayName": "String",
  "alertImpact": {
    "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
  },
  "status": "String",
  "severity": "String",
  "alertRuleId": "String",
  "alertRuleTemplate": "String",
  "detectedDateTime": "String (timestamp)",
  "resolvedDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```
