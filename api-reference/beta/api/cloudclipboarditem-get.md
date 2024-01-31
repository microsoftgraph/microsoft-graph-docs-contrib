---
title: "Get cloudClipboardItems"
description: "Read the properties and relationships of a cloudClipboardItem object or a list of cloudClipbaordItems. "
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "pdrs"
doc_type: apiPageType
---

# Get cloudClipboardItems

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a list of [cloudClipboardItem](../resources/cloudclipboarditem.md) objects. The API only allows getting [cloudClipboardItem](../resources/cloudclipboarditem.md) objects for 
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
Get all cloud clipboard items of the signed-in user.
``` http
GET /me/cloudClipboard/items/
```

Get a single cloud clipboard item by passing an item id.
``` http
GET /me/cloudClipboard/items/{cloudClipboardItemId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

- $skipToken: A token returned in the @odata.nextLink URL in the response of the previous GET [cloudClipboardItem](../resources/cloudclipboarditem.md) request, indicating there are more [cloudClipboardItem](../resources/cloudclipboarditem.md) objects  to fetch for the user. 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Prefer |odata.maxpagesize={x}. Optional. Specifies a preferred integer {x} page size for paginated results. Acceptable values are 1 to 200, inclusive. If not specified in the header, the default page size is 110. 

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [cloudClipboardItem](../resources/cloudclipboarditem.md) objects in the response body.

## Examples


### Request

The following example shows a request of getting all the [cloudClipboardItem](../resources/cloudclipboarditem.md) of a user.
<!-- {
  "blockType": "request",
  "name": "get_cloudclipboarditems"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudClipboard/items
```

### Response

The following example shows the response of getting all [cloudClipboardItem](../resources/cloudclipboarditem.md).
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudClipboardItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudClipboardItem",
      "id": "292bcf2f-b37e-49d0-8882-1e33dd5c2273",
      "payloads": [
        {
          "@odata.type": "microsoft.graph.cloudClipboardItemPayload",
          "content": "UHVsbCBSZXF1ZXN0IDk0MTU0MTQ6IFJlbWZCByZXBsYWNlZCB3aXRoIHN1bW1hcnkgbWVzc2FnZS4=",
          "formatName": "Text"
        }
      ],
      "createdDateTime": "2023-08-10T16:56:25.413Z",
      "lastModifiedDateTime": "2022-06-06T17:04:58.000Z",
      "expirationDateTime": "2023-08-11T04:56:25.387Z"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/me/cloudClipboard/items?$skiptoken=lastModifiedDateTime%20le%202024-01-31T01:14:29.675Z"
}
```

### Request

The following example shows a request of getting a single [cloudClipboardItem](../resources/cloudclipboarditem.md) by id.
<!-- {
  "blockType": "request",
  "name": "get_cloudclipboarditemById"
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
  "@odata.type": "Collection(microsoft.graph.cloudClipboardItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudClipboardItem",
      "id": "292bcf2f-b37e-49d0-8882-1e33dd5c2273",
      "payloads": [
        {
          "@odata.type": "microsoft.graph.cloudClipboardItemPayload",
          "content": "UHVsbCBSZXF1ZXN0IDk0MTU0MTQ6IFJlbWZCByZXBsYWNlZCB3aXRoIHN1bW1hcnkgbWVzc2FnZS4=",
          "formatName": "Text"
        }
      ],
      "createdDateTime": "2023-08-10T16:56:25.413Z",
      "lastModifiedDateTime": "2022-06-06T17:04:58.000Z",
      "expirationDateTime": "2023-08-11T04:56:25.387Z"
    }
  ]
}
```

