---
title: "Get attachment_v2"
description: "Read the properties and relationships of a attachment_v2 object."
author: TODO: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Get fileAttachment_v2
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties, relationships and raw content of a [fileAttachment_v2](../resources/fileattachment_v2.md) object attached to a [todoTask](../resources/todotask.md).

### Get the raw contents of a file attachment
You can append the path segment `/$value` to get the raw contents of a file attachment. 
For a file attachment, the content type is based on its original content type. See an [example 6](#example-6-get-the-raw-contents-of-a-file-attachment-on-a-message).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.Read, Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.Read, Tasks.ReadWrite|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

- To get the properties and relationships of an attachment, specify the attachment ID to index into the **attachments_v2** collection, attached to the specified [todoTask](../resources/todotask.md) instance.
- If the attachment is a file, you can further get the raw contents of the attachment by appending the path segment `/$value` to the request URL.

```http
GET /me/todo/lists/{id}/tasks/{id}/attachments/{id}
GET /users/{id | userPrincipalName}/todo/lists/{id}/tasks/{id}/attachments/{id}
GET /me/todo/lists/{id}/tasks/{id}/attachments/{id}/$value
GET /users/{id | userPrincipalName}/todo/lists/{id}/tasks/{id}/attachments/{id}/$value
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

If successful, this method returns a `200 OK` response code.
If you're getting the properties and relationships of an attachment, the response body includes an [attachment_v2](../resources/attachment_v2.md) object.
The properties of follwing type of attachment are returned: [fileAttachment](../resources/fileattachment_v2.md).
If you're getting the raw contents of a file attachment, the response body includes the raw value of the attachment.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_fileattachment_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/todo/lists/AAMkADA1MTHgwAAA=/tasks/AAMkAGUzY5QKjAAA=/attachments/AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=
```


### Response
Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_file_attachment_beta",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileAttachment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bb8775a4-4d8c-42cf-a1d4-4d58c2bb668f')/messages('AAMkAGUzY5QKjAAA%3D')/attachments/$entity",
    "@odata.type": "#microsoft.graph.fileAttachment",
    "id": "AAMkAGUzY5QKjAAABEgAQAMkpJI_X-LBFgvrv1PlZYd8=",
    "lastModifiedDateTime": "2019-04-02T03:41:29Z",
    "name": "Draft sales invoice template.docx",
    "contentType": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    "size": 13068,
    "isInline": false,
    "contentId": null,
    "contentLocation": null,
    "contentBytes": "UEsDBBQABgAIAAAAIQ4AAAAA"
}
```

