---
title: "portalNotification resource type"
description: "Represents the portal notification associated with the alert record of a user."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# portalNotification resource type

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the portal notification associated with the alert record of a user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertImpact|[microsoft.graph.deviceManagement.alertImpact](../resources/devicemanagement-alertimpact.md)|The associated alert impact.|
|alertRecordId|String|The associated alert record ID.|
|alertRuleId|String|The associated alert rule ID.|
|alertRuleName|String|The associated alert rule name.|
|alertRuleTemplate|[microsoft.graph.deviceManagement.alertRuleTemplate](../resources/devicemanagement-alertrule.md#alertruletemplate-values)|The associated alert rule template. The possible values are: `cloudPcProvisionScenario`, `cloudPcImageUploadScenario`, `cloudPcOnPremiseNetworkConnectionCheckScenario`, `unknownFutureValue`.|
|id|String|The unique identifier for the portal notification.|
|isPortalNotificationSent|Boolean|If `true`, the portal notification has already been sent for the user; otherwise, the portal notification hasn't been sent yet.|
|severity|[microsoft.graph.deviceManagement.ruleSeverityType](../resources/devicemanagement-alertrule.md#ruleseveritytype-values)|The associated alert rule severity. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`.|

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
  "alertImpact": {
    "@odata.type": "microsoft.graph.deviceManagement.alertImpact"
  },
  "alertRecordId": "String",
  "alertRuleId": "String",
  "alertRuleName": "String",
  "alertRuleTemplate": "String",
  "id": "String (identifier)",
  "isPortalNotificationSent": "Boolean",
  "severity": "String"
}
```
