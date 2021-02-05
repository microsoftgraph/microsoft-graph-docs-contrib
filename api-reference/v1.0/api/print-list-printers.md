---
title: Get printers
description: Retrieve the list of printers that are registered in the tenant.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# List printers
Namespace: microsoft.graph

Retrieve the list of **printers** that are registered in the tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table. The signed in user must be a [Printer Administrator](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#printer-administrator).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Printer.Read.All, Printer.ReadWrite.All, Printer.FullControl.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| Not Supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/printers
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

### Exceptions
* The `$expand` and `select` operators are supported for the `share` navigation property, but not for `jobs`.
* Some operators are not supported: `$count`, `$search`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [printer](../resources/printer.md) objects in the response body.

>**Note**: The response will not contain 'defaults' and 'capabilities' properties. These properties can be queried using [Get Printer](printer-get.md) request.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printer"
}
-->
# [HTTP](#tab/http)
``` http
GET https://graph.microsoft.com/v1.0/print/printers
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printer",
      "id": "5b94422c-422c-5b94-2c42-945b2c42945b",
      "displayName": "String",
      "manufacturer": "String",
      "model": "String",
      "isAcceptingJobs": "Boolean",
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
  ]
}
```

