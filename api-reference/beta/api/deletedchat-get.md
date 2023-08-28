---
title: "Get deletedChat"
description: "Read the properties and relationships of a deletedChat object."
author: "sthapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get deletedChat
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [deletedChat](../resources/deletedchat.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Chat.ManageDeletion.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Chat.ManageDeletion.All|

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deletedChat](../resources/deletedchat.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_deletedchat",
  "sampleKeys": ["19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/deletedChats/19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2
```


### Response
The following is an example of the response
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

