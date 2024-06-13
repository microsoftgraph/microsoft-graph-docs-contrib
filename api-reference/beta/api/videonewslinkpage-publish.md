---
title: "Publish VideoNewsLinkPage"
description: "Publish the latest version of a videoNewsLinkPage resource, which makes the version of the videoNewsLinkPage available to all users."
author: kevklam
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# videoNewsLinkPage: publish

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Publish the latest version of a [videoNewsLinkPage](../resources/videonewslinkpage.md) resource, which makes the version of the page available to all users. If the page is checked out, check in the page and publish it. If the page is checked out to the caller of this API, the page is automatically checked in and then published.

> If a page approval flow has been activated in the page library, the page is not published until the approval flow is completed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "videonewslinkpage-publish-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/videonewslinkpage-publish-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST/sites/{siteId}/pages/{pageId}/microsoft.graph.videoNewsLinkPage/publish
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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "videonewslinkpagethis.publish"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/056d8292-ef8a-44fe-bd22-97abf08659b1/pages/cb9c62e1-07da-46ec-88dc-aed1d5164727/microsoft.graph.videoNewsLinkPage/publish
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

