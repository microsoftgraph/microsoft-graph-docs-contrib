---
title: "printJob: redirect"
description: Redirect a print job to a different printer.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# printJob: redirect
Namespace: microsoft.graph

Redirect a [print job](../resources/printjob.md) to a different [printer](../resources/printer.md).

For details about how to use this API to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, a permission that grants [Get printer](printer-get.md) access, and one of the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.Manage.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/printers/{printerId}/jobs/{printJobId}/redirect
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the ID of the printer that the print job should be redirected to.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|destinationPrinterId|String|The ID of the printer the print job should be redirected to.|
|configuration|microsoft.graph.printJobConfiguration|Updated configuration of print job.|

## Response
If successful, this method returns a `200 OK` response code and a [printJob](../resources/printjob.md) object queued for the destination printer.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "printjob_redirect"
}
-->
# [HTTP](#tab/http)
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/redirect

Content-Type: application/json
Content-length: 128

{
  "destinationPrinterId": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.printJobConfiguration"
  }
}
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.printJob",
    "id": "String (identifier)",
    "createdDateTime": "String (timestamp)",
    "status": {
      "@odata.type": "microsoft.graph.printJobStatus"
    },
    "createdBy": {
      "@odata.type": "microsoft.graph.userIdentity"
    },
    "configuration": {
      "@odata.type": "microsoft.graph.printJobConfiguration"
    },
    "redirectedTo": "String",
    "redirectedFrom": "String",
    "isFetchable": "Boolean"
  }
}
```

