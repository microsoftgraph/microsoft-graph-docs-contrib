---
title: "Attach large files to Outlook messages or events"
description: "Depending on the size of the file, you can choose one of two ways to attach a file to a message or event."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Attach large files to Outlook messages or events

You can attach files up to 150 MB to an Outlook [message](/graph/api/resources/message?view=graph-rest-1.0) or [event](/graph/api/resources/event?view=graph-rest-1.0) item. 
Depending on the file size, you can choose one of two ways to attach the file:

- If the file size is under 3 MB, you can do a single POST on the attachments navigation property of the Outlook item; see how to do this [for a message](/graph/api/message-post-attachments?view=graph-rest-1.0) or [for an event](/graph/api/event-post-attachments?view=graph-rest-1.0). The successful `POST` response includes the ID of the file attachment.
- If the file size is between 3MB and 150MB, create an upload session, and iteratively use `PUT` to upload ranges of bytes of the file until you have uploaded the entire file. A header in the final successful `PUT` response includes a URL with the attachment ID.

This article illustrates the second approach with an example. The example creates and uses an upload session to add a large file attachment (of size over 3MB) to a specific message. Upon successfully uploading the entire file, it gets a URL that contains an ID for the file attachment, with which it can do other operations such as getting the file attachment metadata. 

Attaching a large file to an event is similar: after the first step of [creating an upload session for a specific event](#example-request-create-an-upload-session-for-an-event), follow the same process to use the upload session to iteratively upload ranges of bytes of the file until you have uploaded the entire file.

## Step 1: Create an upload session

[Create an upload session](/graph/api/attachment-createuploadsession?view=graph-rest-beta) to attach a file to a message or event. Specify the file in the input parameter **AttachmentItem**.

A successful operation returns `HTTP 201 Created` and a new [uploadSession](/graph/api/resources/uploadsession?view=graph-rest-beta) instance, which contains an opaque URL that you can use in subsequent `PUT` operations to upload portions of the file. The **uploadSession** provides a temporary storage location where the bytes of the file are saved until you have uploaded the complete file.

Make sure to request `Mail.ReadWrite` permission to create the **uploadSession** for a message, and `Calendars.ReadWrite` for an event. The opaque URL, returned in the **uploadUrl** property of the new **uploadSession**, is pre-authenticated and contains the appropriate authorization token for subsequent `PUT` queries in the `https://outlook.office.com` domain. That token expires by **expirationDateTime**. Do not customize this URL for the `PUT` operations.

The **uploadSession** object in the response also includes the **nextExpectedRanges** property, which indicates the initial upload starting location should be byte 0.

### Example request: create an upload session for a message

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "walkthrough_create_uploadsession_message",
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
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/walkthrough-create-uploadsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/walkthrough-create-uploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/walkthrough-create-uploadsession-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Example response: get an uploadSession object for the message
<!-- {
  "blockType": "response",
  "name": "walkthrough_create_uploadsession_message",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://outlook.office.com/api/beta/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/AttachmentSessions('AAMkADI5MAAIT3k0tAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNI",
    "expirationDateTime": "2019-09-25T01:09:30.7671707Z",
    "nextExpectedRanges": [
        "0-"
    ]
}
```

### Example request: create an upload session for an event

<!-- {
  "blockType": "request",
  "name": "walkthrough_create_uploadsession_event",
  "sampleKeys": ["AAMkADU5CCmSAAA="]
}-->
```http
POST https://graph.microsoft.com/beta/me/events/AAMkADU5CCmSAAA=/attachments/createUploadSession
Content-type: application/json

{
  "AttachmentItem": {
    "attachmentType": "file",
    "name": "flower",
    "size": 3483322
  }
}
```


### Example response: get an uploadSession object for the event
<!-- {
  "blockType": "response",
  "name": "walkthrough_create_uploadsession_event",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://outlook.office.com/api/beta/Users('d3b9214b-dd8b-441d-b7dc-c446c9fa0e69@98a79ebe-74bf-4e07-a017-7b410848cb32')/Events('AAMkADU5NzA2NjZlLTE3MTYtNDRkMS1iNzM5LTVkZmNiMDJkYjFlYgBGAAAAAABqzB47_dOSR74xIhiYWhznBwA0POeX5SHnRaRqdoI4oeRpAAAAAAENAAA0POeX5SHnRaRqdoI4oeRpAABuCCmSAAA=')/AttachmentSessions('AAMkADU5NzA2NjZlLTE3MTYtNDRkMS1iNzM5LTVkZmNiMDJkYjFlYgBGAAAAAABqzB47_dOSR74xIhiYWhznBwA0POeX5SHnRaRqdoI4oeRpAAAAAAEBAAA0POeX5SHnRaRqdoI4oeRpAACJlCs8AAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNIdDRobk9JQnpndlU5MD0iLCJ4NXQiOiJKaGg0RkVpMnpsLUlFalBYQUQ1OVRmQzR0S0kiLCJ0eXAiOiJKV1QifQ.eyJvaWQiOiJkM2I5MjE0Yi1kZDhiLTQ0MWQtYjdkYy1jNDQ2YzlmYTBlNjkiLCJ2ZXIiOiJSZXNvdXJjZUxvb3BiYWNrLlVzZXIuVjEiLCJzY3AiOiJBdHRhY2htZW50U2Vzc2lvbi5Xcml0ZSIsInJzY29wZWxlbiI6IjQ1NiIsInJlc291cmNlX3Njb3BlIjoie1wiVVJMXCI6XCI4WTdtWFZXYnRxSFkzWGdPekJKYmxEOWJaeW1tT2dhTmFXT3FGUUdPcTNRPVwifSIsImNvcnJpZCI6ImJlMzhmZmQzLTg5ZDktNDJjYi05NGU4LTcwZWUxYTU2MTFlMSIsImFwcGlkIjoiMDAwMDAwMDMtMDAwMC0wMDAwLWMwMDAtMDAwMDAwMDAwMDAwIiwiYXBwaWRhY3IiOiIwIiwidGlkIjoiOThhNzllYmUtNzRiZi00ZTA3LWEwMTctN2I0MTA4NDhjYjMyIiwiaWF0IjoxNTgyMzMyNDE2LCJuYmYiOjE1ODIzMzI0MTYsImV4cCI6MTU4MjM0MzIxNiwiaXNzIjoiaHR0cHM6Ly9yZXNvdXJjZS5zZWxmLyIsImF1ZCI6Imh0dHBzOi8vb3V0bG9vay5vZmZpY2UuY29tL2FwaS8ifQ.tcMR8Y_XQjLuQos_xuv1kmuC0BpVIHBSC19zEEXsLf9V1sxjaQX1bCXx0Fr7QYs1tYmtH72jNTCUU4TvR25r2phU043kCd56J8gjqoSWpksc-8lz-tSwysZzrkz731NIRz7_2pYFShm5YXuAckF0ZYX1BDLqlayFie6QG5sdOQlKZloPVV2JtW74Ib91ty3cpgYK_tIGu1SGNN_9cvqYiGoQrxxWezfe8mNe1VpQ1ph147k8b_BYLMxDSALIQEoZNhtyf2-ACMjirFMvqynxEEJzANIs7Eet4CzpCtfPZwb97S_nmT6BZgc7iR6xIoNIm_470KCt58L2paGnYxlBtw",
    "expirationDateTime": "2020-02-22T02:46:56.7410786Z",
    "nextExpectedRanges": [
        "0-"
    ]
}

```


## Step 2: Use the upload session to upload a range of bytes of the file

To upload the file, or a portion of the file, make a `PUT` request to the URL returned in step 1 in the **uploadUrl** property of the **uploadSession** resource. You can upload the entire file, or split the file into multiple byte ranges. For better performance, keep each byte range less than 4 MB.

Specify request headers and request body as described below.

### Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
| Content-Length | Int32 | The number of bytes being uploaded in this operation. For better performance, keep the upper limit of the number of bytes for each `PUT` operation to 4 MB. Required. |
| Content-Range | String | The 0-based byte range of the file being uploaded in this operation, expressed in the format `bytes {start}-{end}/{total}`. Required. |
| Content-Type | String  | The MIME type. Specify `application/octet-stream`. Required. |

Do not specify an `Authorization` request header. The `PUT` query uses a pre-authenticated URL from the **uploadUrl** property, that allows access to the `https://outlook.office.com` domain.

### Request body

Specify the actual bytes of the file to be attached, that are in the location range specified by the `Content-Range` request header.

### Response
A successful upload returns `HTTP 200 OK` and an **uploadSession** object. Note the following in the response object:

- The **ExpirationDateTime** property indicates the expiration date/time for the auth token embedded in the **uploadUrl** property value. This expiration date/time remains the same as returned by the initial **uploadSession** in step 1.
- The **NextExpectedRanges** specifies the next byte location to start uploading from, for example, `"NextExpectedRanges":["2097152"]`. You must upload bytes in a file in order.
<!-- The **NextExpectedRanges** specifies one or more byte ranges, each indicating the starting point of a subsequent `PUT` request:

  - On a successful upload, this property returns the next range to start from, for example, `"NextExpectedRanges":["2097152"]`.
  - If a portion of a byte range has not uploaded successfully, this property includes the byte range with the start and end locations, for example, `"NextExpectedRanges":["1998457-2097094"]`.
-->
- The **uploadUrl** property is not explicitly returned, because all `PUT` operations of an upload session use the same URL returned when creating the session (step 1).

### Example request: first upload to the message
<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://outlook.office.com/api/beta/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/AttachmentSessions('AAMkADI5MAAIT3k0tAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNI
Content-Type: application/octet-stream
Content-Length: 2097152
Content-Range: bytes 0-2097151/3483322

{
  <bytes 0-2097151 of the file to be attached, in binary format>
}
```

### Example response: get the start of the next byte range that the server expects
<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://outlook.office.com/api/beta/$metadata#Users('a8e8e219-4931-95c1-b73d-62626fd79c32%4072aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA%3D')/AttachmentSessions/$entity",
  "ExpirationDateTime":"2019-09-25T01:09:30.7671707Z",
  "NextExpectedRanges":["2097152"]
}
```


## Step 3: Continue uploading byte ranges until the entire file has been uploaded

Following the initial upload in step 2, continue to upload the remaining portion of the file, using a similar `PUT` request as described in step 2, before you reach the expiration date/time for the session. Use the **NextExpectedRanges** collection to determine where to start the next byte range to upload. You may see multiple ranges specified, indicating parts of the file that the server has not yet received. This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

Once the last byte of the file has been successfully uploaded, the final `PUT` operation returns `HTTP 201 Created` and a `Location` header that indicates the URL to the file attachment in the `https://outlook.office.com` domain. You can get the attachment ID from the URL and save it for later use. Depending on your scenario, you can use that ID to [get the metadata of the attachment](/graph/api/attachment-get?view=graph-rest-beta), or [remove the attachment from the message or event](/graph/api/attachment-delete?view=graph-rest-beta) using the Microsoft Graph endpoint.

The following request shows uploading the last byte range of the file to the message.

### Example request: final upload
<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://outlook.office.com/api/beta/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/AttachmentSessions('AAMkADI5MAAIT3k0tAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNI
Content-Type: application/octet-stream
Content-Length: 1386170
Content-Range: bytes 2097152-3483321/3483322

{
  <bytes 2097152-3483321 of the file to be attached, in binary format>
}
```

### Example response: get the Location response header to save the attachment ID

From the URL specified by the `Location` response header, save the attachment ID (`AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=`) for later use.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 201 Created

Location: https://outlook.office.com/api/beta/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/Attachments('AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=')
Content-Length: 0
```

## Step 4 (optional): Get the file attachment from the message

As always, [getting an attachment](/graph/api/attachment-get?view=graph-rest-beta) from a message is not technically limited by attachment size.

However, getting a large file attachment in base64-encoded format affects API performance. If you expect a large attachment:

- As an alternative to getting the attachment content in base64 format, you can [get the raw data of the file attachment](/graph/api/attachment-get#example-5-get-the-raw-contents-of-a-file-attachment-on-a-message?view=graph-rest-1.0).
- To [get the metadata of the file attachment](/graph/api/attachment-get?view=graph-rest-beta#example-1-get-the-properties-of-a-file-attachment), append a `$select` parameter to include only those metadata properties you want, excluding the **contentBytes** property which returns the file attachment in base64 format.

### Example request: get the file attachment metadata

The following example shows the sender using a `$select` parameter to get some of the metadata of a file attachment on a message, excluding **contentBytes**.

<!-- {
  "blockType": "request",
  "name": "walkthrough_get_attachment",
  "sampleKeys": ["a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47", "AAMkADI5MAAIT3drCAAA=", "AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0="]
}-->
```http
GET https://graph.microsoft.com/api/v1.0/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/Attachments('AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=')?$select=lastModifiedDateTime,name,contentType,size,isInline
```

### Example response

<!-- {
  "blockType": "response",
  "name": "walkthrough_get_attachment",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileAttachment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('a8e8e219-4931-95c1-b73d-62626fd79c32%4072aa88bf-76f0-494f-91ab-2d7cd730db47')/messages('AAMkADI5MAAIT3drCAAA%3D')/attachments/$entity",
    "@odata.type": "#microsoft.graph.fileAttachment",
    "@odata.mediaContentType": "image/jpeg",
    "id": "AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=",
    "lastModifiedDateTime": "2019-09-24T23:27:43Z",
    "name": "flower",
    "contentType": "image/jpeg",
    "size": 3640066,
    "isInline": false
}
```

## Alternative: Cancel the upload session

At any point of time before the upload session expires, if you have to cancel the upload, you can use the same initial opaque URL to delete the upload session. A successful operation returns `HTTP 204 No Content`.

### Example request: cancel an upload session

<!-- {
  "blockType": "ignored"
}-->
```http
DELETE https://outlook.office.com/api/beta/Users('a8e8e219-4931-95c1-b73d-62626fd79c32@72aa88bf-76f0-494f-91ab-2d7cd730db47')/Messages('AAMkADI5MAAIT3drCAAA=')/AttachmentSessions('AAMkADI5MAAIT3k0tAAA=')?authtoken=eyJhbGciOiJSUzI1NiIsImtpZCI6IktmYUNIUlN6bllHMmNI
```

### Example response

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 204 No content
```


