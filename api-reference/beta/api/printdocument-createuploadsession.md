---
title: "printDocument: createUploadSession"
description: "Create an upload session to iteratively upload ranges of binary file of printDocument."
localization_priority: Normal
author: "nilakhan"
ms.prod: "universal-print"
doc_type: "apiPageType"
---

# printDocument: createUploadSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an upload session that allows an app to iteratively upload ranges of a binary file linked to the print document.

As part of the response, this action returns an upload URL that you can use in subsequent sequential `PUT` queries. Request headers for each `PUT` operation let you specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PrintJob.ReadWrite, PrintJob.ReadWrite.All |
| Delegated (personal Microsoft account) | Not Supported. |
| Application                            | PrintJob.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /print/printers/{id}/jobs/{id}/documents/{id}/createUploadSession
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |


## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|properties|[printDocumentUploadProperties](../resources/printDocumentUploadProperties.md)|Represents properties of the binary file to be uploaded.|

## Response

If successful, this method returns a `200 OK` response code and a new [uploadSession](../resources/uploadsession.md) object in the response body.

>**Note**: 
>
>The **uploadUrl** property returned as part of the **uploadSession** response object is an opaque URL for subsequent `PUT` queries to upload byte ranges of the file. It contains the appropriate auth token for subsequent `PUT` queries that expire by **expirationDateTime**. Do not customize this URL.
>

## Examples

The following example shows how to create an upload session that you can use in subsequent file upload operations to the specified printDocument.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printDocument_createuploadsession",
  "sampleKeys": ["AAMkADI5MAAIT3drCAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/print/printers/1c879027-5120-4aaf-954a-ebfd509a3bcc/jobs/46207/documents/9001bcd9-e36a-4f51-bfc6-140c3ad7f9f7/createUploadSession
Content-type: application/json

{
  "properties": {
    "documentName": "TestFile.pdf",
    "contentType": "application/pdf", 
    "size": 4533322
  }
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/printdocument-createuploadsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/printdocument-createuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/printdocument-createuploadsession-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "printdocument_createuploadsession",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}",
    "expirationDateTime": "2020-10-25T02:19:38.1694207Z",
    "nextExpectedRanges": [
        "0-4533321"
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printDocument: createUploadSession",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


