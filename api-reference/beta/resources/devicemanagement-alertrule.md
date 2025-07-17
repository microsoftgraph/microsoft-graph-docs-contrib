---
title: "alertRule resource type"
description: "Represents the rules that IT administrators can configure to trigger alerts."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/24/2024
---

# alertRule resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a rule that an IT administrator with the appropriate roles can configure to monitor issues and trigger alerts on the Microsoft Endpoint Manager admin center.

When the threshold of an **alertRule** is reached, an [alertRecord](devicemanagement-alertrecord.md) is generated and stored, and administrators receive notifications via defined notification channels.

For more information, see the [monitoring](devicemanagement-monitoring.md) resource.

[!INCLUDE [monitoring-api-support-solicit](../includes/monitoring-api-support-solicit.md)]

|Method|Return type|Description|
|:---|:---|:---|
|[List alertRules](../api/devicemanagement-alertrule-list.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) collection|Get a list of the [alertRule](../resources/devicemanagement-alertrule.md) objects and their properties.|
|[Create alertRule](../api/devicemanagement-alertrule-post.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Create an [alertRule](../resources/devicemanagement-alertrule.md) object.|
|[Get alertRule](../api/devicemanagement-alertrule-get.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Read the properties and relationships of an [alertRule](../resources/devicemanagement-alertrule.md) object.|
|[Update alertRule](../api/devicemanagement-alertrule-update.md)|[microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md)|Update the properties of an [alertRule](../resources/devicemanagement-alertrule.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](#alertruletemplate-values)|The rule template of the alert event. The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`, `cloudPcInGracePeriodScenario`, `cloudPcFrontlineInsufficientLicensesScenario`, `cloudPcInaccessibleScenario`, and `cloudPcFrontlineConcurrencyScenario`.  Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `cloudPcInGracePeriodScenario`, `cloudPcFrontlineInsufficientLicensesScenario`, `cloudPcInaccessibleScenario`, and `cloudPcFrontlineConcurrencyScenario`.|
|description|String|The rule description.|
|displayName|String|The display name of the rule.|
|enabled|Boolean|The status of the rule that indicates whether the rule is enabled or disabled. If `true`, the rule is enabled; otherwise, the rule is disabled.|
|id|String|The unique identifier for the alert rule. Inherited from [entity](../resources/entity.md).|
|isSystemRule|Boolean|Indicates whether the rule is a system rule. If `true`, the rule is a system rule; otherwise, the rule is a custom-defined rule and can be edited. System rules are built in and only a few properties can be edited.|
|notificationChannels|[microsoft.graph.deviceManagement.notificationChannel](../resources/devicemanagement-notificationchannel.md) collection|The notification channels of the rule selected by the user.|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](#ruleseveritytype-values)|The severity of the rule. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|
|threshold|[microsoft.graph.deviceManagement.ruleThreshold](../resources/devicemanagement-rulethreshold.md)|The conditions that determine when to send alerts. For example, you can configure a condition to send an alert when provisioning fails for six or more Cloud PCs. This property is deprecated. Use conditions instead.|
|conditions|[microsoft.graph.deviceManagement.ruleCondition](../resources/devicemanagement-rulecondition.md) collection|The conditions that determine when to send alerts. For example, you can configure a condition to send an alert when provisioning fails for six or more Cloud PCs.|

### alertRuleTemplate values

|Member|Description|
|:---|:---|
|cloudPcProvisionScenario|The alert rule was triggered for an issue with the Cloud PC provisioning. For a system rule, the alert rule was triggered for a Cloud PC provisioning failure.|
|cloudPcImageUploadScenario|The alert rule was triggered for an issue with the process to upload the Cloud PC image. For a system rule, the alert rule was triggered for a failure to upload the Cloud PC image.|
|cloudPcOnPremiseNetworkConnectionCheckScenario|The alert rule was triggered for an issue with the on-premises network connection check. For a system rule, the alert rule was triggered for a failure with the on-premises network connection.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|
|cloudPcInGracePeriodScenario |The alert rule was triggered when the Cloud PC entered the grace period.|
|cloudPcFrontlineInsufficientLicensesScenario| The alert rule was triggered for the Frontline Cloud PCs where more concurrent Cloud PC connections were active than the concurrency limit allows.|
|cloudPcInaccessibleScenario| The alert rule was triggered when Cloud PCs couldn't connect due to host health failure, connection errors, or a zone outage. Alternatively, because they were under provisioning or restoring device status.|
|cloudPcFrontlineConcurrencyScenario| Indicates that the alert rule was triggered for all conditions of the Frontline Cloud PCs concurrency usage. It includes buffer usage conditions for now.|

### ruleSeverityType values

|Member|Description|
|:---|:---|
|unknown|The severity level is `unknown`. Used for initialization.|
|informational|The severity level is `informational`.|
|warning|The severity level is `warning`.|
|critical|The severity level is `critical`.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "alertRuleTemplate": "String",  
  "description": "String",
  "displayName": "String",
  "enabled": "Boolean",
  "id": "String (identifier)",
  "isSystemRule": "Boolean",
  "notificationChannels": [
    {
      "@odata.type": "microsoft.graph.deviceManagement.notificationChannel"
    }
  ], 
  "severity": "String",
  "threshold": {
    "@odata.type": "microsoft.graph.deviceManagement.ruleThreshold"
  },
  "conditions": [
    {
      "@odata.type": "microsoft.graph.deviceManagement.ruleCondition"
    }
  ]
}
```
