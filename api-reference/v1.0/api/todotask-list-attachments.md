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

Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties. The **contentBytes** property will not be returned in the response. Use the [Get attachment](../api/attachment-get.md) API to view the **contentBytes**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read, Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.Read, Tasks.ReadWrite|
|Application|Tasks.Read.All, Tasks.ReadWrite.All|

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_taskfileattachment",
  "sampleKeys": ["AAMehdkfuhgAAA=", "AAMkAGUzY5QKjAAA="]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/todo/lists/AAMehdkfuhgAAA=/tasks/AAMkAGUzY5QKjAAA=/attachments
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-taskfileattachment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-taskfileattachment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-taskfileattachment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-taskfileattachment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-taskfileattachment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-taskfileattachment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.taskFileAttachment",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.taskFileAttachment",
            "id": "AAMkADliMm=",
            "name": "flower.md",
            "size": 2814,
            "lastModifiedDateTime": "2022-06-09T10:40:52Z",
            "contentType": "application/octet-stream"
        },
        {
            "@odata.type": "#microsoft.graph.taskFileAttachment",
            "id": "AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwBGAAAAAADdOMUbUmCfTKa7OC-fqjkdBwBnu3olF7NfToRyJ2f__TNcAAAAAAESAABnu3olF7NfToRyJ2f__TNcAAHmG2K0AAABEgAQAFWmGvX71MhOrjRDhWM95yY=",
            "name": "tree.jpg",
            "size": 8591,
            "lastModifiedDateTime": "2022-06-09T10:40:59Z",
            "contentType": "image/jpeg"
        }
    ]
}
```
