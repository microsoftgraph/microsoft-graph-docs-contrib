---
author: sangle7
description: "Publish the latest version of a sitePage resource, which makes the version of the page available to all users."
title: "sitePage: publish"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.topic: reference
---
# sitePage: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Publish the latest version of a [sitePage][] resource, which makes the version of the page available to all users. If the page is checked out, check in the page and publish it. If the page is checked out to the caller of this API, the page is automatically checked in and then published.

> If a page approval flow has been activated in the page library, the page is not published until the approval flow is completed.

[sitePage]: ../resources/sitepage.md

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitepage_publish" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-publish-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{siteId}/pages/{pageId}/microsoft.graph.sitePage/publish
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content`. It doesn't return anything in the response body.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```


<!--
{
  "type": "#page.annotation",
  "description": "Publish a page.",
  "keywords": "publish page",
  "section": "documentation",
  "tocPath": "Pages/Publish",
  "suppressions": []
}
-->


