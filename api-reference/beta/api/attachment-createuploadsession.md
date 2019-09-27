---
title: "attachment: createUploadSession"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "angelgolfer-ms"
ms.prod: "outlook"
doc_type: "apiPageType"
---

# attachment: createUploadSession

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an upload session that allows an app to iteratively upload ranges of a file in order to attach the file to the specified [message](../resources/message.md).

This action returns as part of the response an upload URL that you can use in subsequent sequential `PUT` queries. Query request headers let you specify the exact range of bytes to be uploaded. This allows the transfer to be resumed if a connection is dropped while the upload is in progress. Files must be between 3 MB and 150 MB in size.

The following are the steps to attach a file using an upload session:

1. Create an upload session
2. Within that upload session, iteratively upload ranges of bytes (up to 4 MB each time) until all the bytes of the file have been uploaded to be attached to the specified message
3. Save the URL for the attachment for future access
4. Delete the upload session 

For an example, see attach a large file to a message.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Mail.ReadWrite |
| Delegated (personal Microsoft account) | Mail.ReadWrite |
| Application                            | Mail.ReadWrite |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/messages/{id}/attachments/createUploadSession
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |


## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|AttachmentItem|[attachmentItem](../resources/attachmentitem.md)|Represents attributes of the item to be uploaded and attached.|

## Response

If successful, this method returns `201, Created` response code and a new [uploadSession](../resources/uploadsession.md) object in the response body.

>**Note**: 
>
>The **uploadUrl** property returned as part of the **uploadSession** response object is an opaque URL for subsequent `PUT` queries to upload byte ranges of the file. It contains the appropriate auth token for subsequent `PUT` queries that expire by **expirationDateTime**. Do not customize this URL.
>
>The **nextExpectedRanges** property specifies one or more ranges of bytes that the server is still missing for the file. These ranges are zero-indexed and of the format `{start}-{end}`, unless if the server misses the remainder of the bytes from the start of that range, in which case the format is simply `{start}`.


## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "attachment_createuploadsession",
  "sampleKeys": ["AAMkADI5MAAIT3drCAAA="]
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADI5MAAIT3drCAAA=/attachments/createUploadSession
Content-type: application/json

{
  "AttachmentItem": {
    "attachmentType": "file",
    "name": "flower", 
    "size": 3483322
  }
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "attachment_createuploadsession",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/testcanarybetaExCnyBeta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://outlook.office.com/api/beta/Users('cfe8e219-4671-49c1-b72c-62f26fd79c32@72f988bf-86f1-41af-91ab-2d7cd011db47')/Messages('AAMkADI5MAAIT3drCAAA=')/AttachmentSessions('AAMkADI5MAAIT3k0uAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNIdDRobk9JQnpndlU5MD0iLCJ4NXQiOiJKaGg0RkVpMnpsLUlFalBYQUQ1OVRmQzR0S0kiLCJ0eXAiOiJKV1QifQ.eyJvaWQiOiJjZmU4ZTIxOS00NjcxLTQ5YzEtYjcyYy02MmYyNmZkNzljMzIiLCJ2ZXIiOiJSZXNvdXJjZUxvb3BiYWNrLlVzZXIuVjEiLCJzY3AiOiJBdHRhY2htZW50U2Vzc2lvbi5Xcml0ZSIsInJzY29wZWxlbiI6IjQ1OCIsInJlc291cmNlX3Njb3BlIjoie1wiVVJMXCI6XCI3Vkw4MDF5ZDcwNkgrNmJyY2VPbkNZK3dBd1dENUs2NWc1WDk2Q0dCb01jPVwifSIsImNvcnJpZCI6IjNkYTIxMWE2LTBlNmQtNDRkMi1hOWU0LTlmNTBkNjQ2OTRlYSIsImFwcGlkIjoiMDAwMDAwMDMtMDAwMC0wMDAwLWMwMDAtMDAwMDAwMDAwMDAwIiwiYXBwaWRhY3IiOiIwIiwidGlkIjoiNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3IiwiaWF0IjoxNTY5MzY2NTcxLCJuYmYiOjE1NjkzNjY1NzEsImV4cCI6MTU2OTM3NzM3MSwiaXNzIjoiaHR0cHM6Ly9yZXNvdXJjZS5zZWxmLyIsImF1ZCI6Imh0dHBzOi8vb3V0bG9vay5vZmZpY2UuY29tL2FwaS8ifQ.lUpqFwqIXMm0w467OLt4ihtcPCKRhXJnMP4mVCoLDrsj2G45jIMeg-ZLagnWMbohnxivQURQRxCwvOBpNcswH70s9uFROT3k8gaxQl7u9eqV711cmTMS8nabDDZ-cftyvfjdJa2VCgEh9Fs1EvHrUNso9MyMYVRWA8PR4tlgy5pL4JgjZZRg00gcZaAUz76v0GhCeJmW1gt1ZbvHk9EyWN5CCbzsKb2R_jca3ZZqhPcbvjuP8FEU6y8FP7HGnF_lcgb8woBJ5mBCiRH1r7CrG9rgd2OwFMT4yazo0iG8Cr3f3RS7hG_H_gMjQNp0DqOMNrGAHSTqcmt3qKVEztZMKA",
    "expirationDateTime": "2019-09-25T01:09:30.7671707Z",
    "nextExpectedRanges": [
        "0-"
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attachment: createUploadSession",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->