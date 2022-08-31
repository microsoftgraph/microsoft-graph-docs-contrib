---
title: "portalNotification resource type"
description: "Represents the portal notification associated with current user's alert record."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# portalNotification resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the portal notification associated with current user's alert record.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertImpact|[microsoft.graph.deviceManagement.alertImpact](../resources/devicemanagement-alertimpact.md)|The associated alert impact|
|alertRecordId|String|The associated alert record id|
|alertRuleId|String|The associated alert rule id|
|alertRuleName|String|The associated alert rule name|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](../resources/devicemanagement-alertrule.md#alertruletemplate-values)|The associated alert rule template.The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`.|
|id|String|Id of the portal notification|
|isPortalNotificationSent|Boolean|When true, the portal notification is already sent for current user. When false, the portal notification is not sent yet|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](../resources/devicemanagement-alertrule.md#ruleseveritytype-values)|The associated alert rule severity.The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagement.portalNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement.portalNotification",
  "id": "String (identifier)",
  "alertRuleId": "String",
  "alertRecordId": "String",
  "alertRuleName": "String",
  "alertRuleTemplate": "String",
  "alertImpact": {
    "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
  },
  "severity": "String",
  "isPortalNotificationSent": "Boolean"
}
```
