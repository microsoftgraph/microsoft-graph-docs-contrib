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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrule_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrule-update-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|enabled|Boolean|The status of the rule that indicates whether the rule is enabled or disabled. If `true`, the rule is enabled; otherwise, the rule is disabled. Optional.|
|notificationChannels|[microsoft.graph.deviceManagement.notificationChannel](../resources/devicemanagement-notificationchannel.md) collection|The notification channels of the rule selected by the user. Optional.|
|severity|microsoft.graph.deviceManagement.ruleSeverityType|The severity of the rule. The possible values are: `unknown`, `informational`, `warning`, `critical`, `unknownFutureValue`. Optional.|
|threshold|[microsoft.graph.deviceManagement.ruleThreshold](../resources/devicemanagement-rulethreshold.md)|The threshold of the rule. Optional.|
|conditions|[microsoft.graph.deviceManagement.ruleCondition](../resources/devicemanagement-rulecondition.md) collection|The conditions of the rule. Conditions determine when to send an alert. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_alertrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules/215c55cc-b1c9-4d36-a870-be5778101714
Content-Type: application/json

{
  "severity": "informational",
  "enabled": true,
  "threshold": {
      "aggregation": "count",
      "operator": "greaterOrEqual",
      "target": 90
  },
  "conditions": [
      {
        "relationshipType": "or",
        "conditionCategory": "azureNetworkConnectionCheckFailures",
        "aggregation": "count",
        "operator": "greaterOrEqual",
        "thresholdValue": "90"
      }
  ],
  "notificationChannels": [
      {
        "notificationChannelType": "portal",
        "notificationReceivers": []
      },
      {
        "notificationChannelType": "email",
        "notificationReceivers": [
            {
                "locale": "en-us",
                "contactInformation": "serena.davis@contoso.com"
            }
        ]
      }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-alertrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-alertrule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-alertrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-alertrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-alertrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-alertrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-alertrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-alertrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
  "conditions": [
      {
        "relationshipType": "or",
        "conditionCategory": "azureNetworkConnectionCheckFailures",
        "aggregation": "count",
        "operator": "greaterOrEqual",
        "thresholdValue": "90"
      }
  ],
  "notificationChannels": [
      {
        "notificationChannelType": "portal",
        "notificationReceivers": []
      },
      {
        "notificationChannelType": "email",
        "notificationReceivers": [
            {
                "locale": "en-us",
                "contactInformation": "serena.davis@contoso.com"
            }
        ]
      }
  ]
}
```
