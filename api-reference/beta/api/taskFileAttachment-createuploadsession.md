---
title: "taskFileAttachment: createUploadSession"
description: "Create an upload session to iteratively upload ranges of a file so as to attach the file to the specified todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# attachmentBase: createUploadSession
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an upload session that allows an app to iteratively upload ranges of a file, so as to attach the file to a [todoTask](../resources/todotask.md). 
Use this approach to attach a file of any supported size between 0 MB to 25 MB.

As part of the response, this action returns an upload URL that you can use in subsequent sequential `PUT` queries. Request headers for each `PUT` operation let you specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. 

The following are the steps to attach a file to an Outlook item using an upload session:

1. Create an upload session.
2. Within that upload session, iteratively upload ranges of bytes (up to 4 MB each time) until all the bytes of the file have been uploaded, and the file is attached to the **todoTask**.
3. Save the ID for the attachment for future access.
4. Optional: Delete the upload session.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Not supported.|


## Step 1 : Create upload session

### HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/todo/lists/{id}/tasks/{id}/attachments/createUploadSession
POST /users/{id}/todo/lists/{id}/tasks/{id}/attachments/createUploadSession
```

### Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

### Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|attachmentInfo|[attachmentInfo](../resources/attachmentinfo.md)|Represents attributes of the item to be uploaded and attached. At minimum, specify the attachment type (`file`), a name, and the size of the file.|


### Response

If successful, this action returns a `200 OK` response code and a new [uploadSession](../resources/uploadsession.md) in the response body.

### Example for Step 1: Create Upload session

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "attachmentbasethis.createuploadsession"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachments/createUploadSession
Content-Type: application/json
Content-length: 85

{
  "attachmentInfo": {
    "@odata.type": "microsoft.graph.attachmentInfo",
    "attachmentType": "file",
    "name": "flower",
    "size": 3483322
  }
}
```

#### Response
The following is an example of the response
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

## Step 2 : Use the upload session to upload a range of bytes of the file

To upload the file, or a portion of the file, make a `PUT` request to the URL returned in step 1 in the **uploadUrl** property of the **uploadSession** resource. You can upload the entire file, or split the file into multiple byte ranges. Each byte range needs to be less than 4 MB.

Specify request headers and request body as described below.

### Request headers

| Name       | Type | Description|
|:---------------|:--------|:----------|
|Authorization|Bearer {token}. | `Authorization` request header is required for this request. |
| Content-Length | Int32 | The number of bytes being uploaded in this operation. For better performance, keep the upper limit of the number of bytes for each `PUT` operation to 4 MB. Required. |
| Content-Range | String | The 0-based byte range of the file being uploaded in this operation, expressed in the format `bytes {start}-{end}/{total}`. Required. |
| Content-Type | String  | The MIME type. Specify `application/octet-stream`. Required. |

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

### Example for Step 2: first upload to the todoTask
#### Request
<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=
Content-Type: application/octet-stream
Content-Length: 2097152
Content-Range: bytes 0-2097151/3483322

{
  <bytes 0-2097151 of the file to be attached, in binary format>
}
```

#### Response

The following example response shows in the **NextExpectedRanges** property the start of the next byte range that the server expects.
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

Following the initial upload in step 2, continue to upload the remaining portion of the file, using a similar `PUT` request as described in step 2, before you reach the expiration date/time for the session. Use the **NextExpectedRanges** collection to determine where to start the next byte range to upload. You may see multiple ranges specified, indicating parts of the file that the server has not yet received. This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

Once the last byte of the file has been successfully uploaded, the final `PUT` operation returns `HTTP 201 Created` and a `Location` header that indicates the URL to the file attachment. You can get the attachment ID from the URL and save it for later use. 

The following examples show uploading the last byte range of the file to the message and to the event in the preceding steps.

### Example for Step 3: Final upload to the todoTask
#### Request
<!-- {
  "blockType": "ignored"
}-->
```http
PUT https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/attachmentSessions/AAMkADliMm=
Content-Type: application/octet-stream
Content-Length: 1386170
Content-Range: bytes 2097152-3483321/3483322

{
  <bytes 2097152-3483321 of the file to be attached, in binary format>
}
```

#### Response
The following example response shows a `Location` response header from which you can save the attachment ID (`AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=`) for later use.

<!-- {
  "blockType": "ignored"
}-->
```http
HTTP/1.1 201 Created

Location: https://graph.microsoft.com/beta/users/6f9a2a92-8527-4d64-837e-b5312852f36d/todo/lists/AAMDiFkfh=/tasks/AAMkADliMm=/Attachments('AAMkADI5MAAIT3drCAAABEgAQANAqbAe7qaROhYdTnUQwXm0=')
Content-Length: 0
```

