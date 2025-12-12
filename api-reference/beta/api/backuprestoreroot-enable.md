---
title: "backupRestoreRoot: enable"
description: "Enable the Microsoft 365 Backup Storage service for a tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 12/03/2024
---

# backupRestoreRoot: enable

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable the [Microsoft 365 Backup Storage](../resources/backuprestoreroot.md) service for a tenant.

> [!NOTE]
> When this API is called via PowerShell, it returns a `403 Forbidden` response code.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_enable" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-enable-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/enable
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the following parameter.

|Parameter|Type|Description|
|:---|:---|:---|
|appOwnerTenantId|String|The ID of the owning tenant. The owning tenant contains the billing profile.|

## Response

If successful, this action returns a `200 OK` response code and a [serviceStatus](../resources/servicestatus.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "backuprestoreroot_enable"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/enable

{
    "appOwnerTenantId": "23014d8c-71fe-4d00-a01a-31850bc5b42a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/backuprestoreroot-enable-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/backuprestoreroot-enable-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/backuprestoreroot-enable-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/backuprestoreroot-enable-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/backuprestoreroot-enable-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/backuprestoreroot-enable-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/backuprestoreroot-enable-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceStatus"
}
-->
``` http
HTTP/1.1 200 OK

{
    "@odata.type": "#microsoft.graph.serviceStatus",
    "id":"b3177c20-8d60-4a41-8a6f-1715ac41297f",
    "status":"enabled",
    "serviceConsumer":"thirdParty",
    "lastModifiedBy":{
        "application":{
            "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "user":{
            "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
        }
    },
    "lastModifiedDateTime":"2023-06-19T12:01:03.45Z"
}
```
