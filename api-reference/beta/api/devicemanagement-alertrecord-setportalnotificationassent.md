---
title: "alertRecord: setPortalNotificationAsSent"
description: "Set a single portal notification status to published."
author: "zhishending"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# alertRecord: setPortalNotificationAsSent

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the status of the notification associated with the specified [alertRecord](../resources/devicemanagement-alertrecord.md) on the Microsoft EndPoint Manager admin center as sent, by setting the **isPortalNotificationSent** property of the [portal notification](../resources/devicemanagement-portalnotification.md) to `true`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicemanagement_alertrecord_setportalnotificationassent" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicemanagement-alertrecord-setportalnotificationassent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/monitoring/alertRecords/{alertRecordId}/setPortalNotificationAsSent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "alertrecordthis.setportalnotificationassent"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRecords/6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e/setPortalNotificationAsSent
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/alertrecordthissetportalnotificationassent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/alertrecordthissetportalnotificationassent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/alertrecordthissetportalnotificationassent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/alertrecordthissetportalnotificationassent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/alertrecordthissetportalnotificationassent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/alertrecordthissetportalnotificationassent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/alertrecordthissetportalnotificationassent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/alertrecordthissetportalnotificationassent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
