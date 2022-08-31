---
title: "alertRule resource type"
description: "Represents the rules that IT Admin can config to trigger alerts."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# alertRule resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules that IT Admin can config to trigger alerts.

|Method|Return type|Description|
|:---|:---|:---|
|[List alertRules](../api/devicemanagement-alertrule-list.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) collection|Get a list of the [alertRule](../resources/devicemanagement-alertrule.md) objects and their properties.|
|[Create alertRule](../api/devicemanagement-alertrule-post.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Create a new [alertRule](../resources/devicemanagement-alertrule.md) object.|
|[Get alertRule](../api/devicemanagement-alertrule-get.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Read the properties and relationships of an [alertRule](../resources/devicemanagement-alertrule.md) object.|
|[Update alertRule](../api/devicemanagement-alertrule-update.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Update the properties of an [alertRule](../resources/devicemanagement-alertrule.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](#alertruletemplate-values)|The rule template of the rule.The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`.|
|description|String|The rule description.|
|displayName|String|The display name of the rule.|
|enabled|Boolean|The status of the rule indicating whether the rule is enabled or disabled. When TRUE, indicates the rule is enabled. When FALSE, indicates the rule is disabled.|
|id|String|The alert rule id. Inherited from [entity](../resources/entity.md).|
|isSystemRule|Boolean|Indicates whether the rule is a system rule. System rules are built-in and only a few properties can be edited. When TRUE, the rule is a system rule. When FALSE, the rule is a custom defined rule and can be edited.|
|notificationChannels|[microsoft.graph.deviceManagement.notificationChannel](../resources/devicemanagement-notificationchannel.md) collection|The notification channels of the rule selected by user.|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](#ruleseveritytype-values)|The severity of the rule. Possible values are informational, warning, critical, unknown and unknownFutureValue. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|
|threshold|[microsoft.graph.deviceManagement.ruleThreshold](../resources/devicemanagement-rulethreshold.md)|The threshold of the rule.|

### alertRuleTemplate values

|Member|Description|
|:---|:---|
|cloudPcProvisionScenario|Indicates that the alert rule was triggered for an issue with Cloud PC provisioning. For system rule, the alert rule was triggered for a Cloud PC provisioning failure.|
|cloudPcImageUploadScenario|Indicates that the alert rule was triggered for an issue with the Cloud PC image uploading process. For system rule, the alert rule was triggered for a failure to upload the Cloud PC image.|
|cloudPcOnPremiseNetworkConnectionCheckScenario|Indicates that the alert rule was triggered for an issue with on-premises network connection check. For system rule, the alert rule was triggered for a failure with the on-premises network connection.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

### ruleSeverityType values

|Member|Description|
|:---|:---|
|unknown|Severity level is unknown. Used for initialization.|
|informational|Severity level is informational.|
|warning|Severity level is warning.|
|critical|Severity level is critical.|
|unknownFutureValue|Unknown future status (reserved, not used right now).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement.alertRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.alertRule",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "severity": "String",
  "enabled": "Boolean",
  "isSystemRule": "Boolean",
  "alertRuleTemplate": "String",
  "threshold": {
    "@odata.type": "microsoft.graph.deviceManagement.ruleThreshold"
  },
  "notificationChannels": [
    {
      "@odata.type": "microsoft.graph.deviceManagement.notificationChannel"
    }
  ]
}
```
