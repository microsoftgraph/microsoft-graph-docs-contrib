---
title: "Update alertRule"
description: "Update the properties of an alertRule object."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Update alertRule

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [alertRule](../resources/devicemanagement-alertrule.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/monitoring/alertRules/{alertRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|severity|ruleSeverityType|The severity of the rule. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`. Optional.|
|enabled|Boolean|The status of the rule indicating whether the rule is enabled or disabled. When TRUE, indicates the rule is enabled. When FALSE, indicates the rule is disabled. Optional.|
|threshold|[microsoft.graph.deviceManagement.ruleThreshold](../resources/devicemanagement-rulethreshold.md)|The threshold of the rule. Optional.|
|notificationChannels|[microsoft.graph.deviceManagement.notificationChannel](../resources/devicemanagement-notificationchannel.md) collection|he notification channels of the rule selected by user. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [alertRule](../resources/devicemanagement-alertrule.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_alertrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules/{alertRuleId}
Content-Type: application/json

{
  "severity": "informational",
  "enabled": true,
  "threshold": {
      "aggregation": "count",
      "operator": "greaterOrEqual",
      "target": 90
  },
  "notificationChannels": [
      {
        "notificationChannelType": "portal",
        "receivers": [
            ""
        ],
        "notificationReceivers": []
      },
      {
        "notificationChannelType": "email",
        "receivers": [
            "foo@bar.com"
        ],
        "notificationReceivers": [
            {
                "locale": "en-us",
                "contactInformation": "foo@bar.com"
            }
        ]
      }
  ]
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.alertRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/monitoring/alertRules/$entity",
  "id": "215c55cc-b1c9-4d36-a870-be5778101714",
  "displayName": "Azure network connection failure impacting Cloud PCs",
  "severity": "informational",
  "isSystemRule": true,
  "description": "Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs",
  "enabled": true,
  "alertRuleTemplate": "cloudPcOnPremiseNetworkConnectionCheckScenario",
  "threshold": {
      "aggregation": "count",
      "operator": "greaterOrEqual",
      "target": 90
  },
  "notificationChannels": [
      {
        "notificationChannelType": "portal",
        "receivers": [
            ""
        ],
        "notificationReceivers": []
      },
      {
        "notificationChannelType": "email",
        "receivers": [
            "foo@bar.com"
        ],
        "notificationReceivers": [
            {
                "locale": "en-us",
                "contactInformation": "foo@bar.com"
            }
        ]
      }
  ]
}
```
