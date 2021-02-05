---
title: Get printerShare
description: Retrieve the properties and relationships of a printer share.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Get printerShare
Namespace: microsoft.graph

Retrieve the properties and relationships of a printer share.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user or app's tenant must have an active Universal Print subscription.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.ReadBasic.All, PrinterShare.Read.All, PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/shares/{printerShareId}
GET /print/printers/{printerId}/shares/{printerShareId}
```

## Optional query parameters
This method supports some of the OData query parameters including $select, $expand to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

e.g. 
```http
GET /print/printers/{id}?$select=id,displayName,capabilities
```

### Exceptions
* The `$count` operator is not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and a [printerShare](../resources/printershare.md) object in the response body.
By default, the response will not contain [printerCapabilities](../resources/printerCapabilities.md). To get **printerCapabilities**, use the `$select` query parameter. 

## Response

If successful, this method returns a `200 OK` response code and a [printerShare](../resources/printershare.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_printershare"
}
-->
# [HTTP](#tab/http)
``` http
GET https://graph.microsoft.com/v1.0/print/shares/{printerShareId}
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.printerShare",
    "id": "0341efb6-efb6-0341-b6ef-4103b6ef4103",
    "displayName": "String",
    "manufacturer": "String",
    "model": "String",
    "isAcceptingJobs": "Boolean",
    "defaults": {
      "@odata.type": "microsoft.graph.printerDefaults"
    },
    "location": {
      "@odata.type": "microsoft.graph.printerLocation"
    },
    "status": {
      "@odata.type": "microsoft.graph.printerStatus"
    },
    "allowAllUsers": "Boolean",
    "createdDateTime": "String (timestamp)"
  }
}
```

The following is an example of the response, when using $select=id,displayName,capabilities

**Note:** The response object shown here might be shortened for readability. 
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.printerShare",
    "id": "0341efb6-efb6-0341-b6ef-4103b6ef4103",
    "displayName": "String",
    "capabilities": {
      "@odata.type": "microsoft.graph.printerCapabilities"
    }
  }
}
```
