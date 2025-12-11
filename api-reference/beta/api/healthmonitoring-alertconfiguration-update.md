---
title: "Update alertConfiguration"
description: "Update the properties of an alertConfiguration object."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 10/15/2024
---

# Update alertConfiguration

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a Microsoft Entra health monitoring [alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object. You can use alertConfiguration settings to specify the distribution groups where alert notifications are to be sent.

This API doesn't currently support group validation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "healthmonitoring_alertconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/healthmonitoring-alertconfiguration-update-permissions.md)]

[!INCLUDE [rbac-healthmonitoring-alertconfiguration-apis-write](../includes/rbac-for-apis/rbac-healthmonitoring-alertconfiguration-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /reports/healthMonitoring/alertConfigurations/{alertConfigurationId}
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
|emailNotificationConfigurations|[microsoft.graph.healthMonitoring.emailNotificationConfiguration](../resources/healthmonitoring-emailnotificationconfiguration.md) collection|Email notification settings for the particular alert type. Currently, only one email notification configuration is supported for an alert configuration, meaning just one group will receive notifications for an alert type.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request. It currently supports only 1 group to receive email notification for an alert type.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_alertconfiguration"
}
-->
```http
PATCH https://graph.microsoft.com/beta/reports/healthMonitoring/alertConfigurations/{alertConfigurationId}
Content-Type: application/json

{
  "emailNotificationConfigurations": [
    {
      "groupId":"c5140914-9507-4180-b60c-04d5ec5eddcb",
      "isEnabled": true
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-alertconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-alertconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-alertconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-alertconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-alertconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-alertconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-alertconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.healthMonitoring.alertConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/healthMonitoring/alertConfigurations/$entity",
  "id": "mfaSignInFailure",
  "emailNotificationConfigurations": [
    {
      "groupId": "c5140914-9507-4180-b60c-04d5ec5eddcb",
      "isEnabled": true
    }
  ]
}
```
