---
title: "Create serviceApp"
description: "Create a new serviceApp."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/03/2024
---

# Create serviceApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [serviceApp](../resources/serviceapp.md).

[!NOTE]
If this API is called via PowerShell, it returns a `403 Forbidden` response code.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_post_serviceapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-serviceapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/serviceApps
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply an empty JSON object `{}` for this method.

## Response

If successful, this method returns a `201 Created` response code and a [serviceApp](../resources/serviceapp.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_serviceapp"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/serviceApps
Content-type: application/json

{
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-serviceapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-serviceapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-serviceapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-serviceapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-serviceapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-serviceapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceApp"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461

{
  "@odata.type": "#microsoft.graph.serviceApp",
  "id":"71633878-8321-4950-bfaf-ed285bdd1461",
  "status" : "inactive",
  "registrationDateTime":"2022-06-19T12:01:03.45Z",
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
