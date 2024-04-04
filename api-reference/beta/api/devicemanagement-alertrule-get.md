---
title: "Get alertRule"
description: "Read the properties and relationships of an alertRule object."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# Get alertRule

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [alertRule](../resources/devicemanagement-alertrule.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrule_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrule-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/monitoring/alertRules/{alertRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_alertrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules/30070507-6514-443b-8fa5-06979cedacdf
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alertrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-alertrule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alertrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alertrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-alertrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alertrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alertrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alertrule-python-snippets.md)]
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
}
```
