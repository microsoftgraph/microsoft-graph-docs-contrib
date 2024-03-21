---
title: "alertRecord: getPortalNotifications"
description: "Get a list of all portal notifications that one or more users can access."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# alertRecord: getPortalNotifications

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all notifications that one or more users can access, from the Microsoft Endpoint Manager admin center.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrecord_getportalnotifications" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrecord-getportalnotifications-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/monitoring/alertRecords/getPortalNotifications
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.deviceManagement.portalNotification](../resources/devicemanagement-portalnotification.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "alertrecordthis.getportalnotifications"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRecords/getPortalNotifications
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/alertrecordthisgetportalnotifications-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/alertrecordthisgetportalnotifications-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/alertrecordthisgetportalnotifications-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/alertrecordthisgetportalnotifications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/alertrecordthisgetportalnotifications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/alertrecordthisgetportalnotifications-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/alertrecordthisgetportalnotifications-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/alertrecordthisgetportalnotifications-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.portalNotification",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.deviceManagement.portalNotification)",
    "value": [
        {
            "id": "6575ceea-1d1c-48f1-b6af-01b98fbde246",
            "alertRuleId": "30070507-6514-443b-8fa5-06979cedacdf",
            "alertRecordId": "6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e",
            "alertRuleName": "Upload failure for Device Images",
            "alertRuleTemplate": "cloudPcImageUploadScenario",
            "isPortalNotificationSent": true,
            "severity": "warning",
            "alertImpact": {
                "value": 2,
                "aggregationType": "count"
            }
        },
        {
            "id": "f2c9ef57-44b8-4783-87e6-e4131a9c1008",
            "alertRuleId": "215c55cc-b1c9-4d36-a870-be5778101714",
            "alertRecordId": "44336915-dfcb-479b-a4d6-54bd66fa1ad6",
            "alertRuleName": "Azure network connection failure impacting Cloud PCs",
            "alertRuleTemplate": "cloudPcOnPremiseNetworkConnectionCheckScenario",
            "isPortalNotificationSent": true,
            "severity": "warning",
            "alertImpact": {
                "value": 100,
                "aggregationType": "count"
            }
        }
    ]
}
```
