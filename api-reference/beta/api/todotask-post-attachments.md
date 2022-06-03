---
title: "Create attachmentBase"
description: "Create a new attachmentBase object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create attachmentBase
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [attachmentBase](../resources/attachmentbase.md) object.

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
POST /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachments
POST /users/{usersId}/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [attachmentBase](../resources/attachmentbase.md) object.

You can specify the following properties when creating an **attachmentBase**.

|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|name|String|**TODO: Add Description** Optional.|
|contentType|String|**TODO: Add Description** Optional.|
|size|Int32|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and an [attachmentBase](../resources/attachmentbase.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_attachmentbase_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachments
Content-Type: application/json
Content-length: 127

{
  "@odata.type": "#microsoft.graph.attachmentBase",
  "name": "String",
  "contentType": "String",
  "size": "Integer"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attachmentBase"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.attachmentBase",
  "id": "4cd21088-df8e-c1ed-dfbb-169c445c432b",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "contentType": "String",
  "size": "Integer"
}
```

