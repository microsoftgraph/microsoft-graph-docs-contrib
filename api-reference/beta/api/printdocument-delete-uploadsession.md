---
title: "Delete an upload session"
description: Delete an upload session to cancel uploading document data to a print job.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# Delete an upload session

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an upload session to cancel uploading document data to a **printJob**. Only the user/application that created the upload session can delete it.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription and permission that grants the ability to [Get printer](printer-get.md).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.ReadWrite, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|PrintJob.ReadWrite.All|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /print/printers/{id}/jobs/{id}/documents/{id}/uploadSession
```

## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example
The following example shows how to call this API to delete an upload session.
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "printdocument-put-uploadsession"
}-->
```http
DELETE https://graph.microsoft.com/beta/print/printers/{id}/jobs/{id}/documents/{id}/uploadSession
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/printdocument-uploaddata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/printdocument-uploaddata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/printdocument-uploaddata-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```