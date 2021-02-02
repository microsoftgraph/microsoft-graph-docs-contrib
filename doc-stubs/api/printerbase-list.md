---
title: "List printerBases"
description: "Get a list of the printerBase objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List printerBases
Namespace: microsoft.graph

Get a list of the [printerBase](../resources/printerbase.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.printerBase not found
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

If successful, this method returns a `200 OK` response code and a collection of [printerBase](../resources/printerbase.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printerbase"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.printerBase not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printerBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printerBase",
      "id": "8c23fc55-fc55-8c23-55fc-238c55fc238c",
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
      "capabilities": {
        "@odata.type": "microsoft.graph.printerCapabilities"
      },
      "status": {
        "@odata.type": "microsoft.graph.printerStatus"
      }
    }
  ]
}
```

