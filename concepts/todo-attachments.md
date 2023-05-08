---
title: "Attach files to a To Do task"
description: "Learn how to attach large files to a Microsoft To Do task and how to choose the right approach to attach a file to a task."
author: "avijityadav"
ms.localizationpriority: high
ms.prod: "outlook"
---

# Attach files to a To Do task

Using the To Do API in Microsoft Graph, you can attach files up to 25 MB to a [todoTask](/graph/api/resources/todotask). Depending on the file size, choose one of two ways to attach the file:
- For attaching files of any size, create an upload session, and iteratively use `PUT` to upload ranges of bytes of the file until you have uploaded the entire file. A header in the final successful `PUT` response includes a URL with the attachment ID.
- If the file size is under 3 MB, do a single `POST` on the **attachments** navigation property of a **todoTask**; see how to do this [for a task](/graph/api/todotask-post-attachments). The successful `POST` response includes the ID of the file attachment.

This article illustrates the first approach. You will learn step-by-step how to create and use an upload session to add a file attachment to a task.
## Step 1: Create an upload session

[Create an upload session](/graph/api/taskfileattachment-createuploadsession) to attach a file to a **todoTask**. Specify the file in the input parameter [attachmentInfo](/graph/api/resources/attachmentinfo).

A successful operation returns `HTTP 201 Created` and a new [uploadSession](/graph/api/resources/uploadsession) instance, which contains an opaque URL that you can use in subsequent `PUT` operations to upload portions of the file. The **uploadSession** provides a temporary storage location where the bytes of the file are saved until you have uploaded the complete file.

The **uploadSession** object in the response also includes the **nextExpectedRanges** property, which indicates that the initial upload starting location should be byte `0`.

### Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Not supported.|

### Example: Create an upload session for a todoTask

#### Request

The following is an example of a request to create an upload session.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "todo_attachment_walkthrough_createuploadsession",
  "sampleKeys": ["AAMDiFkfh=", "AAMkADliMm="]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachments/createUploadSession
Content-Type: application/json

{
  "attachmentInfo": {
    "attachmentType": "file",
    "name": "flower",
    "size": 3483322
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/todo-attachment-walkthrough-createuploadsession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/todo-attachment-walkthrough-createuploadsession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/todo-attachment-walkthrough-createuploadsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/todo-attachment-walkthrough-createuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/todo-attachment-walkthrough-createuploadsession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/todo-attachment-walkthrough-createuploadsession-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the **uploadSession** resource returned for the task in the response body.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.uploadSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=",
    "expirationDateTime": "2022-06-09T10:45:27.4324526Z",
    "nextExpectedRanges": [
        "0-"
    ]
}
```

## Step 2: Use the upload session to upload a range of bytes of the file

To upload the file, or a portion of the file, append `/content` to the URL returned in step 1 in the **uploadUrl** property of the **uploadSession** resource and make a `PUT` request on the appended URL. You can upload the entire file, or split the file into multiple byte ranges. Each byte range needs to be less than 4 MB.

Specify the request headers and the request body as described in the following sections.

### Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
|Authorization | String | Bearer {token}. Required. |
| Content-Length | Int32 | The number of bytes being uploaded in this operation. The upper limit of the number of bytes for each `PUT` operation is 4 MB. The request will fail for anything higher than 4 MB. Required. |
| Content-Range | String | The 0-based byte range of the file being uploaded in this operation, expressed in the format `bytes {start}-{end}/{total}`. Required. |
| Content-Type | String  | The MIME type. Specify `application/octet-stream`. Required. |


### Request body

Specify the actual bytes of the file to be attached, that are in the location range specified by the `Content-Range` request header.

### Response
A successful upload returns a `HTTP 200 OK` response code and an **uploadSession** object. Note the following in the response object:

- The **expirationDateTime** property value remains the same as returned by the initial **uploadSession** in step 1.
- The **nextExpectedRanges** specifies the next byte location to start uploading from, for example, `"nextExpectedRanges":["2097152"]`. You must upload bytes in a file in order.
<!-- The **nextExpectedRanges** specifies one or more byte ranges, each indicating the starting point of a subsequent `PUT` request:

  - On a successful upload, this property returns the next range to start from, for example, `"nextExpectedRanges":["2097152"]`.
  - If a portion of a byte range has not uploaded successfully, this property includes the byte range with the start and end locations, for example, `"nextExpectedRanges":["1998457-2097094"]`.
-->
- The **uploadUrl** property is not explicitly returned, because all `PUT` operations of an upload session use the same URL returned when you create the session (step 1).

### Example: First upload to the todoTask

#### Request

The following is an example of a request.

<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=/content
Content-Type: application/octet-stream
Content-Length: 2097152
Content-Range: bytes 0-2097151/3483322

{
  <bytes 0-2097151 of the file to be attached, in binary format>
}
```

#### Response

The following is an example of the response that shows in the **nextExpectedRanges** property the start of the next byte range that the server expects.
<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "ExpirationDateTime":"2022-06-09T10:45:27.4324526Z",
  "NextExpectedRanges":["2097152"]
}
```

## Step 3: Continue uploading byte ranges until the entire file has been uploaded

Following the initial upload in step 2, continue to upload the remaining portion of the file, using a similar `PUT` request as described in step 2, before you reach the expiration date/time for the session. Use the **nextExpectedRanges** collection to determine where to start the next byte range to upload. You might see multiple ranges specified, indicating parts of the file that the server has not yet received. This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

Once the last byte of the file has been successfully uploaded, the final `PUT` operation returns a `HTTP 201 Created` response code and a `Location` header that indicates the URL to the file attachment. You can get the attachment ID from the URL and save it for later use.

The following examples show how to upload the last byte range of the file to the **todoTask** in the preceding steps.

### Example: Final upload to the todoTask

#### Request

The following is an example of a request.

<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=/content
Content-Type: application/octet-stream
Content-Length: 1386170
Content-Range: bytes 2097152-3483321/3483322

{
  <bytes 2097152-3483321 of the file to be attached, in binary format>
}
```

#### Response
The following is an example of the response that shows a `Location` response header from which you can save the attachment ID (`AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=`) for later use.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 201 Created

Location: https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/Attachments/AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=
Content-Length: 0
```

## Alternative step: Cancel the upload session
At any point of time before the upload session expires, if you have to cancel the upload, you can use the same initial URL to delete the upload session. A successful operation returns an HTTP `204 No Content` response code.

### Example: Cancel the upload session

#### Request

The following is an example of a request.

<!-- {
  "blockType": "ignored"
}-->
```http
DELETE https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 204 No content
```

