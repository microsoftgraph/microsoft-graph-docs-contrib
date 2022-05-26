---
title: "Create attachmentSession"
description: "Create a new attachmentSession object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create attachmentSession
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [attachmentSession](../resources/attachmentsession.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachmentSessions
POST /users/{usersId}/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachmentSessions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [attachmentSession](../resources/attachmentsession.md) object.

You can specify the following properties when creating an **attachmentSession**.

|Property|Type|Description|
|:---|:---|:---|
|content|Stream|**TODO: Add Description** Optional.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|nextExpectedRange|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [attachmentSession](../resources/attachmentsession.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_attachmentsession_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachmentSessions
Content-Type: application/json
Content-length: 176

{
  "@odata.type": "#microsoft.graph.attachmentSession",
  "content": "Stream",
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRange": [
    "String"
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attachmentSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.attachmentSession",
  "id": "ff8ed168-d3df-aec5-73b9-67785c5d412c",
  "content": "Stream",
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRange": [
    "String"
  ]
}
```

