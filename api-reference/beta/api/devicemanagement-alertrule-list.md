---
title: "List alertRules"
description: "Get a list of the alertRule objects and their properties."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List alertRules

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [alertRule](../resources/devicemanagement-alertrule.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrule_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrule-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/monitoring/alertRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alertrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alertrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-alertrule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alertrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alertrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-alertrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alertrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-alertrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alertrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.alertRule",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/monitoring/alertRules",
  "value": [
      {
          "id": "215c55cc-b1c9-4d36-a870-be5778101714",
          "displayName": "Azure network connection failure impacting Cloud PCs",
          "severity": "warning",
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
      },
      {
          "id": "30070507-6514-443b-8fa5-06979cedacdf",
          "displayName": "Upload failure for Device Images",
          "severity": "warning",
          "isSystemRule": true,
          "description": "Device Image Uploads have failed and can delay the provisioning of new Cloud PCs.",
          "enabled": true,
          "alertRuleTemplate": "cloudPcImageUploadScenario",
          "threshold": {
              "aggregation": "count",
              "operator": "greaterOrEqual",
              "target": 2
          },
          "conditions": [
              {
                "relationshipType": "or",
                "conditionCategory": "imageUploadFailures",
                "aggregation": "count",
                "operator": "greaterOrEqual",
                "thresholdValue": "2"
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
      },
      {
          "id": "b43741fa-254a-445f-86cf-8def2c32571a",
          "displayName": "Provisioning Failure impacting Cloud PCs",
          "severity": "warning",
          "isSystemRule": true,
          "description": "Provisioning has failed and is delaying end users from connecting to their Cloud PCs.",
          "enabled": true,
          "alertRuleTemplate": "cloudPcProvisionScenario",
          "threshold": {
              "aggregation": "count",
              "operator": "greaterOrEqual",
              "target": 1
          },
          "conditions": [
              {
                "relationshipType": "or",
                "conditionCategory": "provisionFailures",
                "aggregation": "count",
                "operator": "greaterOrEqual",
                "thresholdValue": "1"
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
  ]
}
```
