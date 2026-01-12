---
title: "newsLinkPage: publish"
description: "Publish the latest version of a newsLinkPage resource that makes the version available to all users."
author: shgangan
ms.date: 04/01/2024
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# newsLinkPage: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Publish the latest version of a [newsLinkPage](../resources/newslinkpage.md) resource that makes the version available to all users. If the page is checked out, check it in first and then publish it. If the page is checked out to the caller of this API, it is automatically checked in and then published. If content approval is activated in the page library, the page isn't published until the approval flow is completed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage-publish-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-publish-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /sites/{siteId}/pages/{pageId}/microsoft.graph.newsLinkPage/publish
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

<!-- {
  "blockType": "request",
  "name": "newslinkpagethis.publish"
}
-->
```http
POST https://graph.microsoft.com/beta/sites/c1370818-f5e0-4a40-a99b-be4520640642/pages/637c601e-0d0e-43c0-b50f-b18513bb9de2/microsoft.graph.newsLinkPage/publish
```

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

