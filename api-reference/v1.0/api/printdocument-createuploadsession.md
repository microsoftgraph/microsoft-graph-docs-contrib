---
title: "printDocument: createUploadSession"
description: "Create an upload session to iteratively upload ranges of binary file of printDocument."
ms.localizationpriority: medium
author: "nilakhan"
ms.subservice: "universal-print"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# printDocument: createUploadSession
Namespace: microsoft.graph

Create an upload session that allows an app to iteratively upload ranges of a binary file linked to the print document.

As part of the response, this action returns an upload URL that can be used in subsequent sequential `PUT` queries. Request headers for each `PUT` operation can be used to specify the exact range of bytes to be uploaded. This allows transfer to be resumed, in case the network connection is dropped during upload. 

>**Note**: Creating an upload session using application permissions will only succeed if there is a [printTask](../resources/printTask.md) in a `processing` state on the associated print job, started by a trigger that the requesting app created. For details about how to register a task trigger, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "printdocument_createuploadsession" } -->
[!INCLUDE [permissions-table](../includes/permissions/printdocument-createuploadsession-permissions.md)]

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

To create an upload session using **printerShare** (supported with delegated permissions only): 

<!-- { "blockType": "ignored" } -->
```http
POST /print/shares/{id}/jobs/{id}/documents/{id}/createUploadSession
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printdocument_createuploadsession"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/documents/{printDocumentId}/createUploadSession
Content-Type: application/json

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/printdocument-createuploadsession-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/printdocument-createuploadsession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/printdocument-createuploadsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/printdocument-createuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/printdocument-createuploadsession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/printdocument-createuploadsession-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/printdocument-createuploadsession-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.uploadSession",
    "uploadUrl": "https://print.print.microsoft.com/uploadSessions/5400be13-5a4e-4c20-be70-90c85bfe5d6e?tempauthtoken={token}",
    "expirationDateTime": "2020-10-25T02:19:38.1694207Z",
    "nextExpectedRanges": [
        "0-4533321"
    ]
}
```

