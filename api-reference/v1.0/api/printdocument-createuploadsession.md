---
title: "printDocument: createUploadSession"
description: "Create an upload session to iteratively upload ranges of binary file of printDocument."
localization_priority: Normal
author: "nilakhan"
ms.prod: "cloud-printing"
doc_type: "apiPageType"
---

# printDocument: createUploadSession
Namespace: microsoft.graph

Create an upload session that allows an app to iteratively upload ranges of a binary file linked to the print document.

As part of the response, this action returns an upload URL that can be used in subsequent sequential `PUT` queries. Request headers for each `PUT` operation can be used to specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) or [Get printerShare](printershare-get.md) access depending upon whether printer or printerShare is being used.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PrintJob.Create, PrintJob.ReadWrite, PrintJob.ReadWrite.All |
| Delegated (personal Microsoft account) | Not Supported. |
| Application                            | PrintJob.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To create an upload session using **printer**: 

<!-- { "blockType": "ignored" } -->
```http
POST /print/printers/{id}/jobs/{id}/documents/{id}/createUploadSession
```

To create an upload session using **printerShare**: 

<!-- { "blockType": "ignored" } -->
```http
POST /print/shares/{id}/jobs/{id}/documents/{id}/createUploadSession
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|properties|[printDocumentUploadProperties](../resources/printDocumentUploadProperties.md)|Represents properties of the binary file to be uploaded.|

The value of the **contentType** property in the request body should be supported by the printer/printerShare. You can get the supported content types by getting [printerCapabilities](../resources/printercapabilities.md) of the printer/printerShare. 

For **OXPS to PDF** conversion, you need to pass `application/oxps` as contentType for printer/printerShare that supports `application/pdf`. 
Universal Print converts **OXPS to PDF**, when **all** the following conditions are met: 
1.	The printer/printer share supports `application/pdf` in **printerCapabilities**. 
2.	The printer/printer share does NOT support `application/oxps` in **printerCapabilities**. 
3.	The value for the **contentType** property in the request body is `application/oxps`.

## Response

If successful, this method returns a `200 OK` response code and a new [uploadSession](../resources/uploadsession.md) object in the response body.

>**Note**: The **uploadUrl** property returned as part of the **uploadSession** response object is an opaque URL for subsequent `PUT` queries to upload byte ranges of the file. It contains the appropriate auth token for subsequent `PUT` queries that expire by **expirationDateTime**. Do not change this URL.

## Examples

The following example shows how to create an upload session that you can use in subsequent file upload operations to the specified printDocument.

### Request
<!-- {
  "blockType": "request",
  "name": "printdocument_createuploadsession"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/documents/{printDocumentId}/createUploadSession

Content-Type: application/json
Content-length: 96

{
  "properties": {
    "@odata.type": "microsoft.graph.printDocumentUploadProperties"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
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
  "value": {
    "@odata.type": "microsoft.graph.uploadSession"
  }
}
```

