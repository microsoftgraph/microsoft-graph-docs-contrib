---
title: "Get cloudClipboardItem"
description: "Read the properties and relationships of a cloudClipboardItem object. "
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: apiPageType
---

# Get cloudClipboardItem
Namespace: microsoft.graph


Read the properties and relationships of a [cloudClipboardItem](../resources/cloudclipboarditem.md) object. This API only allows you to get a [cloudClipboardItem](../resources/cloudclipboarditem.md) object for:
- The signed-in user's own [cloudClipboardItem](../resources/cloudclipboarditem.md).
- An app on behalf of the user if the user grants delegated access to it.

This API doesn't support using another user's credentials to get a [cloudClipboardItem](../resources/cloudclipboarditem.md) for a user.

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
``` http
GET /me/cloudClipboard/items/{cloudClipboardItemId}
```

## Optional query parameters

This method doesn't support the OData query parameters to customize the respone. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudClipboardItem](../resources/cloudclipboarditem.md) object in the response body.

### Errors
In addition to [general errors](/graph/errors) that apply to Microsoft Graph, the following error conditions are specific to the Cloud Clipboard API.  

|Status code|Status message|Description|
|:---|:---|:---|
|400|Bad request|The request is malformed or incorrect, such as an invalid `cloudClipboardItemId`.|
|403|Forbidden|The caller can't perform the action. It indicates that the user doesn't consent to sharing  [cloudClipboardItem](../resources/cloudclipboarditem.md).|
|409|Conflict|The current state conflicts with what the request expects. It usually indicates that the user isn't eligible for the cloud clipboard feature because the user doesn't have at least two strongly authenticated devices.|
|429|Too many requests|The request rate limit has been exceeded. Wait for the time specified in the `Retry-After` header and try again.| 

## Examples


### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_cloudclipboarditem"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/user/cloudClipboard/items/{cloudClipboardItemId}
```

### Response
The following example shows the response.
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
      "formatName": "TextBase64"
    }
  ],
  "createdDateTime": "2023-08-10T16:56:25.413Z",
  "lastModifiedDateTime": "2022-06-06T17:04:58.000Z",
  "expirationDateTime": "2023-08-11T04:56:25.387Z"
}
```
