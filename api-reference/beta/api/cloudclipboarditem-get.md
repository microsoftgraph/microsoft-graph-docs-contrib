---
title: "Get cloudClipboardItem"
description: "Read the properties and relationships of a cloudClipboardItem object. "
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "pdrs"
doc_type: apiPageType
---

# Get cloudClipboardItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudClipboardItem](../resources/cloudclipboarditem.md) object. The API only allows getting a [cloudClipboardItem](../resources/cloudclipboarditem.md) object for 
- The signed-in user's own [cloudClipboardItem](../resources/cloudclipboarditem.md).
- An app on behalf of the user if the user has given delegated access to it.

Getting user2's [cloudClipboardItem](../resources/cloudclipboarditem.md) using user1's credential is **not** allowed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudclipboarditem-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudclipboarditem-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

Get a single cloud clipboard item by passing an item id.
``` http
GET /me/cloudClipboard/items/{cloudClipboardItemId}
```

## Optional query parameters

N/A.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudClipboardItem](../resources/cloudclipboarditem.md) object in the response body.

## Examples


### Request

The following example shows a request of getting a single [cloudClipboardItem](../resources/cloudclipboarditem.md) by id.
<!-- {
  "blockType": "request",
  "name": "get_cloudclipboarditem"
}
-->
``` http
GET https://graph.microsoft.com/beta/user/cloudClipboard/items/{cloudClipboardItemId}
```

The following example shows the response of getting a single [cloudClipboardItem](../resources/cloudclipboarditem.md) by id.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudClipboardItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudClipboardItem",
  "id": "292bcf2f-b37e-49d0-8882-1e33dd5c2273",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.cloudClipboardItemPayload",
      "content": "aGVsbG8sIHdvcmxkIQ==",
      "formatName": "Text"
    }
  ],
  "createdDateTime": "2023-08-10T16:56:25.413Z",
  "lastModifiedDateTime": "2022-06-06T17:04:58.000Z",
  "expirationDateTime": "2023-08-11T04:56:25.387Z"
}
```