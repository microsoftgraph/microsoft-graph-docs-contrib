---
title: Create printJob for a printer
description: Create a new printJob for a printer. 
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Create printJob
Namespace: microsoft.graph

Create a new [printJob](../resources/printJob.md) for a [printer](../resources/printer.md). 

Also creates a new [printDocument](../resources/printDocument.md) associated with the printJob.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) access. The signed in user must be a [Printer Administrator](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#printer-administrator).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.Create, PrintJob.ReadWriteBasic, PrintJob.ReadWrite, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Not Supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /print/printers/{printerId}/jobs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [printJob](../resources/printjob.md) object. The printJob object should only contain **configuration** property. All properties of **configuration** are nullable. All other fields, including job and document IDs, are set automatically during resource creation and should not be provided in request.

Right now, Universal Print supports only one **printDocument** per **printJob** object.

## Response

If successful, this method returns a `201 Created` response code and a [printJob](../resources/printjob.md) object and associated [printDocument](../resources/printDocument.md) in the response body. 

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_printjob_from_"
}
-->
# [HTTP](#tab/http)
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs
Content-Type: application/json
Content-length: 376

{
  "@odata.type": "#microsoft.graph.printJob",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.printJob",
  "id": "455215a5-15a5-4552-a515-5245a5155245",
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
  "isFetchable": "Boolean",
  "documents": [
    {
      "@odata.type": "microsoft.graph.printDocument"
    }
  ]
}
```

