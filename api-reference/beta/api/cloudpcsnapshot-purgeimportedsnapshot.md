---
title: "cloudPCSnapshot: purgeImportedSnapshot"
description: "Purge (delete) the unused imported snapshot from the Windows 365 service-managed storage account."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/10/2025
---

# cloudPCSnapshot: purgeImportedSnapshot
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Purge (delete) the unused imported [snapshot](../resources/cloudpcsnapshot.md) from the Windows 365 service-managed storage account.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_purgeimportedsnapshot" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-purgeimportedsnapshot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/snapshots/purgeImportedSnapshot
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                            |
|:----------|:------------------|:-------------------------------------------------------------------------------------------------------|
| snapshotIds   | String collection | The list of unique identifiers for imported snapshots.             |


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_purgeimportedsnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/purgeImportedSnapshot
Content-Type: application/json

{
  "snapshotIds": [
    "7e8c3054-bda1-4e37-81c5-7d1b080a8849",
    "715c8075-6892-42f3-9550-40b4b48e13d2"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-purgeimportedsnapshot-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-purgeimportedsnapshot-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-purgeimportedsnapshot-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-purgeimportedsnapshot-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-purgeimportedsnapshot-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-purgeimportedsnapshot-python-snippets.md)]
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

