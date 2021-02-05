---
title: Get shares
description: Retrieve a list of printer shares.
author: braedenp-msft
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# List shares
Namespace: microsoft.graph

Retrieve a list of **printerShares**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.Read.All, PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/shares
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To see a list of each printer share's capabilities, include the optional `$select=capabilities` query parameter.

### Exceptions
Some operators are not supported: `$count`, `$orderby`, `$search`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

>**Note**: The response will not contain 'defaults' and 'capabilities' properties. These properties can be queried using [Get PrinterShare](printershare-get.md) request.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printershare"
}
-->
# [HTTP](#tab/http)
``` http
GET https://graph.microsoft.com/v1.0/print/shares
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printerShare)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printerShare",
      "id": "0341efb6-efb6-0341-b6ef-4103b6ef4103",
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
      "allowAllUsers": "Boolean",
      "createdDateTime": "String (timestamp)"
    }
  ]
}
```

