---
title: "serviceApp: activate"
description: "Activate a serviceApp."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# serviceApp: activate

Namespace: microsoft.graph

Activate a [serviceApp](../resources/serviceapp.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceapp_activate" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceapp-activate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/serviceApps/{serviceAppId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

You can specify the following properties you activate a **serviceApp**.

|Property|Type|Description|
|:---|:---|:---|
|effectiveDateTime|DateTimeOffset|The date time to activate the serviceApp. Required.|

## Response

If successful, this action returns a `202 Accepted` response code and a [serviceApp](../resources/serviceapp.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceappthis.activate"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/serviceApps/{71633878-8321-4950-bfaf-ed285bdd1461}/activate
Authorization: Bearer <Access-Token>

{
    "effectiveDateTime": "2024-04-19T12:01:03.45Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceappthisactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceappthisactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceappthisactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceappthisactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceappthisactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceappthisactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/serviceappthisactivate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceApp"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Location: /solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461

{
  "@odata.type": "#microsoft.graph.serviceApp",
  "id":"71633878-8321-4950-bfaf-ed285bdd1461",
  "status" : "pendingActive",
  "registrationDateTime":"2023-06-19T12:01:03.45Z",
  "effectiveDateTime": "2024-04-19T12:01:03.45Z",   
  "lastModifiedDateTime":"2023-06-19T12:01:03.45Z",
  "lastModifiedBy":{
      "application":{
          "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
          "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
  }
}
```

