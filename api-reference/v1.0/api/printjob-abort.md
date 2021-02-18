---
title: "printJob: abort"
description: Abort a print job.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# printJob: abort

Namespace: microsoft.graph

Abort a print job. Only applications using application permissions can abort a print job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the app's tenant must have an active Universal Print subscription and have either the Printer.Read.All or Printer.ReadWrite.All application permission.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not Supported |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All, PrintJob.Manage.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/printers/{printerId}/jobs/{printJobId}/abort
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
In the request body, you can optionally provide the reason why the job is being aborted.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|reason|String|Reason why job is being aborted.|

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "printjob_abort"
}
-->
# [HTTP](#tab/http)
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/abort
Content-Type: application/json
Content-length: 26

{
  "reason": "String"
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

