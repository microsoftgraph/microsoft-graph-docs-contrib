---
title: Get printer
description: Retrieve the properties and relationships of a printer object.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Get printer
Namespace: microsoft.graph

Retrieve the properties and relationships of a [printer](../resources/printer.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table. The signed in user must be a [Printer Administrator](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#printer-administrator).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Printer.Read.All, Printer.ReadWrite.All, Printer.FullControl.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Printer.Read.All, Printer.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/printers/{id}
GET /print/shares/{id}/printer
```

## Optional query parameters
This method supports some of the OData query parameters including $select, $expand to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

e.g. 
```http
GET /print/printers/{id}?$select=id,displayName,capabilities
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [printer](../resources/printer.md) object in the response body.
By default, the response will not contain [printerCapabilities](../resources/printerCapabilities.md). To get **printerCapabilities**, use the `$select` query parameter. 

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_printer"
}
-->
# [HTTP](#tab/http)
``` http
GET https://graph.microsoft.com/v1.0/print/printers/{printerId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printer"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.printer",
    "id": "5b94422c-422c-5b94-2c42-945b2c42945b",
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
    "registeredDateTime": "String (timestamp)",
    "isShared": "Boolean",
    "hasPhysicalDevice": "Boolean"
}
```

The following is an example of the response, when using $select=id,displayName,capabilities
>**Note:** The response object shown here might be shortened for readability.
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.printer",
    "id": "5b94422c-422c-5b94-2c42-945b2c42945b",
    "displayName": "String",
    "capabilities": {
      "@odata.type": "microsoft.graph.printerCapabilities"
    }
}
```

