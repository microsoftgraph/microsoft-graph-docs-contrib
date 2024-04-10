---
title: "alertRecord: changeAlertRecordsPortalNotificationAsSent"
description: "Change the isPortalNotificationSent property to true for a list of alert records for the current user."
author: "abbyzhccc"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# alertRecord: changeAlertRecordsPortalNotificationAsSent

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the **isPortalNotificationSent** property of all [portal notification](../resources/devicemanagement-portalnotification.md) resources associated with the specified [alertRecord](../resources/devicemanagement-alertrecord.md) to `true`, marking them as sent. A maximum of 100 [alertRecord](../resources/devicemanagement-alertrecord.md) IDs can be received at one time, and a maximum of 100 **portal notification** resources can be changed in the **isPortalNotificationSent** property status.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrecord_changealertrecordsportalnotificationassent" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrecord-changealertrecordsportalnotificationassent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/monitoring/alertRecords/changeAlertRecordsPortalNotificationAsSent
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
|alertRecordIds| String collection | A list of up to 100 [alertRecord](../resources/devicemanagement-alertrecord.md) IDs.|

## Response

If successful, this action returns a `202 Accepted` response code.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "alertrecordthis.changeAlertRecordsPortalNotificationAsSent"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRecords/changeAlertRecordsPortalNotificationAsSent

{
  "alertRecordIds": [
    "1d2b92e3-539a-481f-b38a-c2c050b422ad",
    "4bf624c4-a801-4631-989c-7f1a3a0d1d83",
  ]

}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/alertrecordthischangealertrecordsportalnotificationassent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/alertrecordthischangealertrecordsportalnotificationassent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/alertrecordthischangealertrecordsportalnotificationassent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/alertrecordthischangealertrecordsportalnotificationassent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/alertrecordthischangealertrecordsportalnotificationassent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/alertrecordthischangealertrecordsportalnotificationassent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/alertrecordthischangealertrecordsportalnotificationassent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/alertrecordthischangealertrecordsportalnotificationassent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---
### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 ACCEPTED
```
