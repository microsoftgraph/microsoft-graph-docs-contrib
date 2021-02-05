---
title: Update printJob configuration
description: Update the configuration of a print job
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Update printJob
Namespace: microsoft.graph

Update the [configuration](../resources/printjobconfiguration.md) property of a [print job](../resources/printjob.md).

Updating a print job configuration will only succeed if there is a [printTask](../resources/printTask.md) in `processing` state on the associated print job, started by a trigger that requesting app created. For details about how to register a task trigger, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, either the Printer.Read.All or Printer.ReadWrite.All application permission, and one of the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /print/printers/{printerId}/jobs/{printJobId}/configuration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values of the relevant [printJobConfiguration](../resources/printjobconfiguration.md) fields. Existing properties that are not included in the request body will maintain their previous values.

## Response

If successful, this method returns a `200 OK` response code and an updated [printJobConfiguration](../resources/printJobConfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_printjob"
}
-->
# [HTTP](#tab/http)
``` http
PATCH https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/configuration
Content-Type: application/json
Content-length: 376

{
    "@odata.type": "microsoft.graph.printJobConfiguration"
}
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.printJobConfiguration"
}
```

