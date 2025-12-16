---
title: "Get backupRestoreRoot"
description: "Get the service status of the Microsoft 365 Backup Storage service in a tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Get backupRestoreRoot

Namespace: microsoft.graph

Get the [serviceStatus](../resources/servicestatus.md) of the [Microsoft 365 Backup Storage](../resources/backuprestoreroot.md) service in a tenant.

> [!NOTE]
> These APIs are intended for use by registered Backup Controller applications. If this API is called via Microsoft Graph PowerShell, it returns a `403 Forbidden` response code because the Microsoft Graph PowerShell SDK isn't a supported client for these operations.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [backupRestoreRoot](../resources/backuprestoreroot.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "backuprestoreroot_get"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/backuprestoreroot-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/backuprestoreroot-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/backuprestoreroot-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/backuprestoreroot-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/backuprestoreroot-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/backuprestoreroot-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.backupRestoreRoot"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/backupRestore/$entity",
  "serviceStatus": {
      "status": "enabled",
      "disableReason": "none",
      "backupServiceConsumer": "firstparty",
      "lastModifiedDateTime": "2024-05-21T04:47:52.5769075Z",
      "lastModifiedBy": {
          "user": {
              "identity": "40927a5d-4f18-4966-9bfe-2e00cd1d0ee8"
          }
      }
  }
}
```

