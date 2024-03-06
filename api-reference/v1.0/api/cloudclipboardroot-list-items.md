---
title: "List cloudClipboard items"
description: "Get a list of the cloudClipboard items and their properties."
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: apiPageType
---

# List cloudClipboard items

Namespace: microsoft.graph


Get a list of the [cloudClipboardItem](../resources/cloudclipboarditem.md) objects and their properties for a user. This API only allows you to get [cloudClipboardItem](../resources/cloudclipboarditem.md) objects for:

- The signed-in user's own [cloudClipboardItem](../resources/cloudclipboarditem.md) objects.
- An app on behalf of the user if the user grants delegated access to it.

This API doesn't support using another user's credentials to get a [cloudClipboardItem (../resources/cloudclipboarditem.md) for a user. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudclipboardroot-list-items-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudclipboardroot-list-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /user/cloudClipboard/items
```

## Optional query parameters

This method supports `$skipToken` [OData query parameters](/graph/query-parameters) to help customize the response. 

`$skipToken` is a token returned in the `@odata.nextLink` URL in the response of the previous List request, which indicates that there are more [cloudClipboardItem](../resources/cloudclipboarditem.md) objects to fetch for the user. 


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Prefer |odata.maxpagesize={x}. Optional. Specifies a preferred integer {x} page size for paginated results. Acceptable values are 1 to 200, inclusive. If not specified in the header, the default page size is 110. 

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudClipboardItem](../resources/cloudclipboarditem.md) objects in the response body.

### Errors
In addition to [general errors](/graph/errors) that apply to Microsoft Graph, some error conditions are specific to the Cloud Clipboard API.  

|Status code|Status message|Description|
|:---|:---|:---|
|400|Bad request|The request is malformed or incorrect, such as invalid page size or invalid `$skipToken` value.|
|403|Forbidden|The caller can't perform the action. It indicates that the user has not consented to share [cloudClipboardItem](../resources/cloudclipboarditem.md).|
|409|Conflict|The current state conflicts with what the request expects. It usually indicates that the user isn't eligible for the cloud clipboard feature because the user doesn't have at least two strongly authenticated devices.|
|429|Too many requests|The request rate limit has been exceeded. Wait for the time specified in the `Retry-After` header and try again.| 

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_cloudclipboarditem"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/user/cloudClipboard/items
```


### Response

The following example shows the response.
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
          "content": "aGVsbG8sIHdvcmxkIQ==",
          "formatName": "TextBase64"
        }
      ],
      "createdDateTime": "2023-08-10T16:56:25.413Z",
      "lastModifiedDateTime": "2022-06-06T17:04:58.000Z",
      "expirationDateTime": "2023-08-11T04:56:25.387Z"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/cloudClipboard/items?$skiptoken=lastModifiedDateTime%20le%202024-01-31T01:14:29.675Z"
}
```

