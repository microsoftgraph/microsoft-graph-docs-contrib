---
title: "List taskFileAttachments"
description: "Get a list of the taskFileAttachment objects and their properties."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# List taskFileAttachments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read, Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.Read, Tasks.ReadWrite|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/todo/lists/{todoTaskListId}/tasks/{todoTaskId}/attachments
GET /users/{id}/todo/lists/{id}/tasks/{id}/attachments
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

If successful, this method returns a `200 OK` response code and a collection of [taskFileAttachment](../resources/taskfileattachment.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_taskfileattachment"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/todo/lists/AAMehdkfuhgAAA=/tasks/AAMkAGUzY5QKjAAA=/attachments/
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.taskFileAttachment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.taskFileAttachment",
    "id": "AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=",
    "lastModifiedDateTime": "2021-04-02T03:41:29Z",
    "name": "Q1 Planning.docx",
    "contentType": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    "size": 29068,
    "contentBytes": "UEsDBBQABgAIAAAAIQ4AAAAA"
  }
}
```
