---
title: "Get deletedChat"
description: "Read the properties and relationships of a deletedChat object."
author: "sthapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get deletedChat
Namespace: microsoft.graph

Read the properties and relationships of a [deletedChat](../resources/deletedchat.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "deletedchat_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/deletedchat-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/deletedChats/{deleted-chat-id}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deletedChat](../resources/deletedchat.md) object in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_deletedchat",
  "sampleKeys": ["19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/teamwork/deletedChats/19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deletedChat"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.deletedChat",
    "id": "19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2"
  }
}
```

