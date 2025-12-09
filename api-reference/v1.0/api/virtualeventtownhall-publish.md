---
title: "virtualEventTownhall: publish"
description: "Publish a virtual event town hall to make it visible to its audience."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# virtualEventTownhall: publish
Namespace: microsoft.graph

Publish a [virtualEventTownhall](../resources/virtualeventtownhall.md) to make it visible to its audience.

Only the **Organizer** can publish a townhall event.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventtownhall_publish" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-publish-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/townhalls/{id}/publish
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventtownhall.publish",
  "sampleKeys": ["bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/publish
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventtownhallpublish-javascript-snippets.md)]
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
