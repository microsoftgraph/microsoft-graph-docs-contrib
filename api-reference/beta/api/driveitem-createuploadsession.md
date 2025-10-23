---
author: spgraph-docs-team
description: "Create an upload session to allow your app to upload files up to the maximum file size."
title: "driveItem: createUploadSession"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 10/15/2025
---
# driveItem: createUploadSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an upload session to allow your app to upload files up to the maximum file size.

An upload session allows your app to upload ranges of the file in sequential API requests. It also enables the transfer to resume if the connection is dropped during the upload.

To upload a file using an upload session:

1. [Create an upload session](#create-an-upload-session)
2. [Upload bytes to the upload session](#upload-bytes-to-the-upload-session)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_createuploadsession" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-createuploadsession-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## Create an upload session

To begin a large file upload, your app must first request a new upload session.
This request creates a temporary storage location where the bytes of the file are saved until the complete file is uploaded.
When the last byte of the file is uploaded, the upload session is completed and the final file is shown in the destination folder.
You can also defer final creation of the file in the destination until you explicitly make a request to complete the upload by setting the **deferCommit** property in the request arguments.

### HTTP request

To upload a new file, you must provide both the parent ID and the new file name in the request. However, an update only requires the ID of the item to be updated.

#### Create new file

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{parentItemId}:/{fileName}:/createUploadSession
POST /groups/{groupId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession
POST /me/drive/items/{parentItemId}:/{fileName}:/createUploadSession
POST /sites/{siteId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession
POST /users/{userId}/drive/items/{parentItemId}:/{fileName}:/createUploadSession
```

#### Update existing file

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/createUploadSession
POST /groups/{groupId}/drive/items/{itemId}/createUploadSession
POST /me/drive/items/{itemId}/createUploadSession
POST /sites/{siteId}/drive/items/{itemId}/createUploadSession
POST /users/{userId}/drive/items/{itemId}/createUploadSession
```

### Request headers

| Name | Value | Description |
|:---|:---|:---|
| if-match | etag  | If this request header is included and the eTag (or cTag) provided doesn't match the current etag on the item, a `412 Precondition Failed` error response is returned. |
| if-none-match | etag | If this request header is included and the eTag (or cTag) provided matches the current etag on the item, a `412 Precondition Failed` error response is returned. |

### Request body

No request body is required. However, you can specify properties in the request body to provide more information about the file being uploaded and to customize the semantics of the upload operation.

For example, the **item** property allows setting the following parameters:
<!-- { "blockType": "ignored" } -->
```json
{
  "@microsoft.graph.conflictBehavior": "fail (default) | replace | rename",
  "description": "description", // only available for OneDrive (personal)
  "driveItemSource": { "@odata.type": "microsoft.graph.driveItemSource" },
  "fileSize": 1234, // only available for OneDrive (personal)
  "name": "filename.txt",
  "mediaSource": { "@odata.type": "microsoft.graph.mediaSource" }
}
```

The following example controls the behavior when the filename is already taken. This example also specifies that the final file shouldn't be created until an explicit completion request is made.

<!-- { "blockType": "ignored" } -->
```json
{
  "item": {
    "@microsoft.graph.conflictBehavior": "rename"
  },
  "deferCommit": true
}
```

| Property   | Type                                                                           | Description                                                                                           |
|:------------|:-------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------|
| deferCommit | Boolean                                                                        | If set to `true`, the final creation of the file in the destination requires an explicit request. |
| item        | [driveItemUploadableProperties](../resources/driveItemUploadableProperties.md) | Data about the file being uploaded.                                                                   |

### Request

The response to this request provides the details of the newly created [uploadSession](../resources/uploadsession.md), which includes the URL used for uploading the parts of the file.

>**Note:** The {item-path} must contain the name of the item that's specified in the request body.

<!-- { "blockType": "ignored", "name": "upload-fragment-create-session" } -->

```http
POST /me/drive/items/{itemID}:/{item-path}:/createUploadSession
Content-Type: application/json

{
  "item": {
    "@microsoft.graph.conflictBehavior": "rename",
    "name": "largefile.dat"
  }
}
```

### Response

If successful, the response to this request provides the details of where the remainder of the requests should be sent as an [uploadSession](../resources/uploadsession.md) resource.

When a session is created and generates preauthenticated upload URLs, the upload URL can be used to complete the upload within a time window sufficient for large files.

The [uploadSession](../resources/uploadsession.md) resource provides details about where each byte range of the file should be uploaded and specifies when the session expires. The **expirationDateTime** property indicates the time at which the current session expires if no further activity occurs. This results in the following behavior:

- You must upload the next fragment or commit the session before the time specified in the **expirationDateTime** property.
- Each uploaded fragment extends the expiration time, which allows large file uploads to be completed successfully. The updated expiration time is returned in every request to upload a file fragment.
- If no fragments are received and the session isn't committed, all previously uploaded fragments are discarded.

This process supports large file uploads and ensures that upload sessions are efficiently managed by preventing stale or abandoned data from remaining in the system too long.

If the `fileSize` parameter is specified and exceeds the available quota, a `507 Insufficient Storage` response is returned and the upload session isn't created.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.uploadSession",
       "optionalProperties": [ "nextExpectedRanges" ]  } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "uploadUrl": "https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337",
  "expirationDateTime": "2015-01-29T09:21:55.523Z"
}
```

## Upload bytes to the upload session

To upload the file, or a portion of the file, your app makes a PUT request to the **uploadUrl** value received in the **createUploadSession** response.
You can upload the entire file, or split the file into multiple byte ranges, as long as the maximum bytes in any given request is less than 60 MiB.

The fragments of the file must be uploaded sequentially in order.
Uploading fragments out of order results in an error.

>**Note:** If your app splits a file into multiple byte ranges, the size of each byte range **MUST** be a multiple of 320 KiB (327,680 bytes).

Using a fragment size that doesn't divide evenly by 320 KiB results in errors committing some files.

### Example

In this example, the app is uploading the first 26 bytes of a 128-byte file.

* The **Content-Length** header specifies the size of the current request.
* The **Content-Range** header indicates the range of bytes in the overall file that this request represents.
* The total length of the file is known before you can upload the first fragment of the file.

<!-- { "blockType": "ignored" } -->

```http
PUT https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 26
Content-Range: bytes 0-25/128

<bytes 0-25 of the file>
```

> [!NOTE]
>
> - To upload large files using SDKs, see [Upload large files using the Microsoft Graph SDKs](/graph/sdks/large-file-upload).
> - Your app must ensure the total file size specified in the **Content-Range** header is the same for all requests. If a byte range declares a different file size, the request fails.

### Response

When the request is complete, the server responds with `202 Accepted` if there are more byte ranges that need to be uploaded.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["26-"]
}
```

Your app can use the **nextExpectedRanges** value to determine where to start the next byte range.
You may see multiple ranges specified, indicating parts of the file that the server hasn't yet received.
This is useful if you need to resume a transfer that was interrupted and your client is unsure of the state on the service.

You should always determine the size of your byte ranges according to the best practices below.
Don't assume that **nextExpectedRanges** returns ranges of proper size for a byte range to upload.
The **nextExpectedRanges** property indicates ranges of the file that haven't been received and not a pattern for how your app should upload the file.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": [
  "12345-55232",
  "77829-99375"
  ]
}
```

## Remarks

- The **nextExpectedRanges** property doesn't always list all of the missing ranges.
- On successful fragment writes, it returns the next range to start from (for example, `523-`).
- On failures where the client sent a fragment the server already received, the server responds with `HTTP 416 Requested Range Not Satisfiable`. To get a more detailed list of missing ranges, you can [request upload status](#resuming-an-in-progress-upload).
- If you include the `Authorization` header when issuing the PUT call, it might result in an `HTTP 401 Unauthorized` response. Only include the `Authorization` header and bearer token when issuing the POST request during the first step. Don't include it when issuing the PUT call.

## Completing a file

If **deferCommit** is `false` or unset, then the upload is automatically completed when the final byte range of the file is PUT to the upload URL.

If **deferCommit** is `true`, you can explicitly complete the upload in two ways:

- After the final byte range of the file is PUT to the upload URL, send a final POST request to the upload URL with zero-length content (currently only supported on OneDrive for Business and SharePoint).
- After the final byte range of the file is PUT to the upload URL, send a final PUT request in the same way that you would [handle upload errors](#handle-upload-errors) (currently only supported on OneDrive Personal).

When the upload is completed, the server responds to the final request with an `HTTP 201 Created` or `HTTP 200 OK`.
The response body also includes the default property set for the **driveItem** that represents the completed file.

<!-- { "blockType": "ignored" } -->

```http
PUT https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 21
Content-Range: bytes 101-127/128

<final bytes of the file>
```

> [!NOTE]
>
> - To upload large files using SDKs, see [Upload large files using the Microsoft Graph SDKs](/graph/sdks/large-file-upload).

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```

<!-- { "blockType": "ignored" } -->

```http
POST https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
Content-Length: 0
```

> [!NOTE]
>
> - To upload large files using SDKs, see [Upload large files using the Microsoft Graph SDKs](/graph/sdks/large-file-upload).

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```

## Handling upload conflicts

If a conflict occurs after the file is uploaded (for example, an item with the same name was created during the upload session), an error is returned when the last byte range is uploaded.

```http
HTTP/1.1 409 Conflict
Content-Type: application/json

{
  "error":
  {
    "code": "nameAlreadyExists",
    "message": "Another file exists with the same name as the uploaded session. You can redirect the upload session to use a new filename by calling PUT with the new metadata and @microsoft.graph.sourceUrl attribute.",
  }
}
```

## Cancel the upload session

To cancel an upload session, send a DELETE request to the upload URL.
This cleans up the temporary file holding the data previously uploaded.
This should be used in scenarios where the upload is aborted, for example, if the user cancels the transfer.

Temporary files and their accompanying upload session are automatically cleaned up after the **expirationDateTime** has passed.
Temporary files might not be deleted immediately after the expiration time elapsed.

### Request

<!-- { "blockType": "ignored" } -->

```http
DELETE https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF866337
```

> [!NOTE]
>
> - To upload large files using SDKs, see [Upload large files using the Microsoft Graph SDKs](/graph/sdks/large-file-upload).

### Response

The following example shows the response.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 204 No Content
```

## Resuming an in-progress upload

If an upload request is disconnected or fails before the request is completed, all bytes in that request are ignored.
This can occur if the connection between your app and the service is dropped.
If this occurs, your app can still resume the file transfer from the previously completed fragment.

To find out which byte ranges have been received previously, your app can request the status of an upload session.

### Example

Query the status of the upload by sending a GET request to the `uploadUrl`.

<!-- { "blockType": "ignored" } -->

```http
GET https://sn3302.up.1drv.com/up/fe6987415ace7X4e1eF86633784148bb98a1zjcUhf7b0mpUadahs
```

The server responds with a list of missing byte ranges that need to be uploaded and the expiration time for the upload session.

> [!NOTE]
>
> - To upload large files using SDKs, see [Upload large files using the Microsoft Graph SDKs](/graph/sdks/large-file-upload).


<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "expirationDateTime": "2015-01-29T09:21:55.523Z",
  "nextExpectedRanges": ["12345-"]
}
```

### Upload remaining data

Now that your app knows where to start the upload from, resume the upload by following the steps in [upload bytes to the upload session](#upload-bytes-to-the-upload-session).

## Handle upload errors

When the last byte range of a file is uploaded, it's possible for an error to occur.
This can be due to a name conflict or quota limitation being exceeded.
The upload session is preserved until the expiration time, which allows your app to recover the upload by explicitly committing the upload session.

To explicitly commit the upload session, your app must make a PUT request with a new **driveItem** resource to be used when committing the upload session.
This new request should correct the source of error that generated the original upload error.

To indicate that your app is committing an existing upload session, the PUT request must include the `@microsoft.graph.sourceUrl` property with the value of your upload session URL.

<!-- { "blockType": "request", "name": "explicit-upload-commit" } -->

```http
PUT https://graph.microsoft.com/beta/me/drive/root:/{path_to_file}
Content-Type: application/json
If-Match: {etag or ctag}

{
  "name": "largefile.vhd",
  "@microsoft.graph.conflictBehavior": "rename",
  "@microsoft.graph.sourceUrl": "{upload session URL}"
}
```

**Note:** You can use the `@microsoft.graph.conflictBehavior` and `if-match` headers as expected in this call.

### Response

If the file can be committed using the new metadata, an `HTTP 201 Created` or `HTTP 200 OK` response is returned with the **driveItem** metadata for the uploaded file.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.driveItem", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "912310013A123",
  "name": "largefile.vhd",
  "size": 128,
  "file": { }
}
```

## Best practices

- Resume or retry uploads that fail due to connection interruptions or any 5xx errors, including:
  - `500 Internal Server Error`
  - `502 Bad Gateway`
  - `503 Service Unavailable`
  - `504 Gateway Timeout`
- Use an exponential back off strategy if any 5xx server errors are returned when resuming or retrying upload requests.
- For other errors, you shouldn't use an exponential back off strategy but limit the number of retry attempts made.
- Handle `404 Not Found` errors when doing resumable uploads by starting the entire upload over. This indicates the upload session no longer exists.
- Use resumable file transfers for files larger than 10 MiB (10,485,760 bytes).
- A byte range size of 10 MiB for stable high speed connections is optimal. For slower or less reliable connections you may get better results from a smaller fragment size. The recommended fragment size is between 5-10 MiB.
- Use a byte range size that is a multiple of 320 KiB (327,680 bytes). Failing to use a fragment size that is a multiple of 320 KiB can result in large file transfers failing after the last byte range is uploaded.

## Error responses

For details about how errors are returned, see [Error responses][error-response].

[error-response]: /graph/errors
[item-resource]: ../resources/driveitem.md
[driveItemSource]: ../resources/driveitemsource.md
[mediaSource]: ../resources/mediaSource.md

## Related content

[Large file upload](/graph/sdks/large-file-upload)

<!--
{
  "type": "#page.annotation",
  "description": "Upload large files using an upload session.",
  "keywords": "upload,large file,fragment,BITS",
  "section": "documentation",
  "suppressions": []
}
-->
