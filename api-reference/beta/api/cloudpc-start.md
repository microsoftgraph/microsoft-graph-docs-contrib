---
title: "cloudPC: start"
description: "Start a specific Cloud PC."
author: "rbayetov"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/04/2024
---

# cloudPC: start

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start a specific Cloud PC. Currently, only [Windows 365 Frontline](https://www.microsoft.com/en/windows-365/frontline) Cloud PCs are supported.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_start" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-start-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To start the [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

```http
POST /me/cloudPCs/{cloudPCId}/start
POST /users/{userId}/cloudPCs/{id}/start
```

To start the specified [cloudPC](../resources/cloudpc.md) in the organization, using either delegated permission (the signed-in user should be the administrator) or application permission:

```http
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/start
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_start_cloudpc"
}
-->

```http
POST https://graph.microsoft.com/beta/me/cloudPCs/36bd4942-0ca8-11ed-861d-0242ac120002/start
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-start-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-start-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-start-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-start-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-start-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-start-cloudpc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
