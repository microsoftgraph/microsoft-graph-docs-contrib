---
title: Get printJob
description: Retrieve the properties and relationships of a print job.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Get printJob
Namespace: microsoft.graph

Retrieve the properties and relationships of a print job.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription and have a permission that grants [Get printer](printer-get.md) or [Get printerShare](printershare-get.md) access depending upon whether printer or printerShare is being used.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrintJob.ReadBasic, PrintJob.Read, PrintJob.ReadBasic.All, PrintJob.Read.All, PrintJob.ReadWriteBasic, PrintJob.ReadWrite, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintJob.ReadBasic.All, PrintJob.Read.All, PrintJob.ReadWriteBasic.All, PrintJob.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

To get a job from a printer:
```http
GET /print/printers/{id}/jobs/{id}
```

To get a job from a printer share:
```http
GET /print/shares/{id}/jobs/{id}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [printJob](../resources/printjob.md) object in the response body.

## Examples

### Example 1: Get print job

#### Request
The following is an example of a request to get metadata for a print job.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_printjob"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}
```

#### Response
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
    "isFetchable": "Boolean"
  }
}
```

### Example 2: Get print job with task list

#### Request
The following is a request to get a print job and any [tasks](../resources/printtask.md) that are executing, or have executed, against it.

<!-- {
  "blockType": "request",
  "name": "get_printjob_withtasks"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}?$expand=tasks
```

#### Response
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
    "tasks": 
     [
       {
         "@odata.type": "microsoft.graph.printTask"
       }
     ]
  }
}
```

### Example 3: Get a print job and its associated document data

#### Request
The following is an example of a request to get a print job and its associated document data.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_printjob_withdocumentdata"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}?$expand=documents
```

#### Response
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
    "documents": 
     [
       {
         "@odata.type": "microsoft.graph.printDocument"
       }
     ]
  }
}
```
