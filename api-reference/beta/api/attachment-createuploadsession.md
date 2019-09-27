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

Create an upload session that allows an app to iteratively upload ranges of a file between 3 MB and 150 MB, so to attach the file to a [message](../resources/message.md).

An upload session allows the app to upload ranges of the file in sequential API requests, which allows the transfer to be resumed if a connection is dropped while the upload is in progress.

The following are the steps to attach a file using an upload session:

1. Create an upload session
2. Within that upload session, iteratively upload ranges of bytes (up to 4 MB each iteration) until all the bytes of the files have been uploaded to form an attachment to the specified message
3. Save the URL for the attachment for future access
4. Delete the upload session 

For an example, see attach a large file to a message.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/events/{id}/attachments/{id}/createUploadSession
POST /me/messages/{id}/attachments/{id}/createUploadSession
POST /me/calendarView/{id}/attachments/{id}/createUploadSession
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |


## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|AttachmentItem|attachmentItem|Represents attributes of the item to be uploaded and attached.|

## Response

If successful, this method returns `201, Created` response code and a new [uploadSession](../resources/uploadsession.md) object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "attachment_createuploadsession"
}-->

```http
POST https://graph.microsoft.com/beta/me/messages/AAMkADI5Mzc4YTlkLTVjZjItNDJhNS05ZmU3LTU2YTJiYjhhZjIxNgBGAAAAAAADGL_BqirVS6FEnUVisa5NBwDwixtZOrUrR5RXNMZXQk3DAAAADmB-AAAl2xvcUSQ_TaqhQcJ2WJijAAIT3drCAAA=/attachments/createUploadSession
Content-type: application/json

{
  "AttachmentItem": {
    "attachmentType": "file",
    "name": "flower.jpg", 
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
    "@odata.context": "https://canary.graph.microsoft.com/testcanarybetaExCnyBeta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://outlook.office.com/api/beta/Users('cfe8e219-4671-49c1-b72c-62f26fd79c32@72f988bf-86f1-41af-91ab-2d7cd011db47')/Messages('AAMkADI5Mzc4YTlkLTVjZjItNDJhNS05ZmU3LTU2YTJiYjhhZjIxNgBGAAAAAAADGL_BqirVS6FEnUVisa5NBwDwixtZOrUrR5RXNMZXQk3DAAAADmB-AAAl2xvcUSQ_TaqhQcJ2WJijAAIT3drCAAA=')/AttachmentSessions('AAMkADI5Mzc4YTlkLTVjZjItNDJhNS05ZmU3LTU2YTJiYjhhZjIxNgBGAAAAAAADGL_BqirVS6FEnUVisa5NBwDwixtZOrUrR5RXNMZXQk3DAAAADmB7AAAl2xvcUSQ_TaqhQcJ2WJijAAIT3k0uAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNIdDRobk9JQnpndlU5MD0iLCJ4NXQiOiJKaGg0RkVpMnpsLUlFalBYQUQ1OVRmQzR0S0kiLCJ0eXAiOiJKV1QifQ.eyJvaWQiOiJjZmU4ZTIxOS00NjcxLTQ5YzEtYjcyYy02MmYyNmZkNzljMzIiLCJ2ZXIiOiJSZXNvdXJjZUxvb3BiYWNrLlVzZXIuVjEiLCJzY3AiOiJBdHRhY2htZW50U2Vzc2lvbi5Xcml0ZSIsInJzY29wZWxlbiI6IjQ1OCIsInJlc291cmNlX3Njb3BlIjoie1wiVVJMXCI6XCI3Vkw4MDF5ZDcwNkgrNmJyY2VPbkNZK3dBd1dENUs2NWc1WDk2Q0dCb01jPVwifSIsImNvcnJpZCI6IjNkYTIxMWE2LTBlNmQtNDRkMi1hOWU0LTlmNTBkNjQ2OTRlYSIsImFwcGlkIjoiMDAwMDAwMDMtMDAwMC0wMDAwLWMwMDAtMDAwMDAwMDAwMDAwIiwiYXBwaWRhY3IiOiIwIiwidGlkIjoiNzJmOTg4YmYtODZmMS00MWFmLTkxYWItMmQ3Y2QwMTFkYjQ3IiwiaWF0IjoxNTY5MzY2NTcxLCJuYmYiOjE1NjkzNjY1NzEsImV4cCI6MTU2OTM3NzM3MSwiaXNzIjoiaHR0cHM6Ly9yZXNvdXJjZS5zZWxmLyIsImF1ZCI6Imh0dHBzOi8vb3V0bG9vay5vZmZpY2UuY29tL2FwaS8ifQ.lUpqFwqIXMm0w467OLt4ihtcPCKRhXJnMP4mVCoLDrsj2G45jIMeg-ZLagnWMbohnxivQURQRxCwvOBpNcswH70s9uFROT3k8gaxQl7u9eqV711cmTMS8nabDDZ-cftyvfjdJa2VCgEh9Fs1EvHrUNso9MyMYVRWA8PR4tlgy5pL4JgjZZRg00gcZaAUz76v0GhCeJmW1gt1ZbvHk9EyWN5CCbzsKb2R_jca3ZZqhPcbvjuP8FEU6y8FP7HGnF_lcgb8woBJ5mBCiRH1r7CrG9rgd2OwFMT4yazo0iG8Cr3f3RS7hG_H_gMjQNp0DqOMNrGAHSTqcmt3qKVEztZMKA",
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