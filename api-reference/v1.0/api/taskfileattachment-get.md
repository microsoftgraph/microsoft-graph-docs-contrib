---
title: "Get taskFileAttachment"
description: "Read the properties and relationships of a taskFileAttachment object."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Get taskFileAttachment
Namespace: microsoft.graph

Read the properties and relationships of a [taskFileAttachment](../resources/taskfileattachment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read, Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.Read, Tasks.ReadWrite|
|Application|Tasks.Read.All, Tasks.ReadWrite.All|

## HTTP request
To get a file attached to a [todoTask](../resources/todotask.md):
 
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /me/todo/lists/{id}/tasks/{id}/attachments/{id}
GET /users/{id}/todo/lists/{id}/tasks/{id}/attachments/{id}
```

To get the raw contents of a file attachment (the content type is based on the original content type of the file):
<!-- {
  "blockType": "ignored"
}
-->
``http
GET /me/todo/lists/{id}/tasks/{id}/attachments/{id}/$value
GET /users/{id}/todo/lists/{id}/tasks/{id}/attachments/{id}/$value
``

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [taskFileAttachment](../resources/taskfileattachment.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_taskfileattachment",
  "sampleKeys": ["AAMehdkfuhgAAA=", "AAMkAGUzY5QKjAAA=", "AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8="]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/todo/lists/AAMehdkfuhgAAA=/tasks/AAMkAGUzY5QKjAAA=/attachments/AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-taskfileattachment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-taskfileattachment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-taskfileattachment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-taskfileattachment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-taskfileattachment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-taskfileattachment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskFileAttachment"
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

