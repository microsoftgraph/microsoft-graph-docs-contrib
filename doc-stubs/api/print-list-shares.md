---
title: "List shares"
description: "Get the printerShare resources from the shares navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List shares
Namespace: microsoft.graph

Get the printerShare resources from the shares navigation property.

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
GET /print/shares
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

If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printershare"
}
-->
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
      },
      "allowAllUsers": "Boolean",
      "createdDateTime": "String (timestamp)"
    }
  ]
}
```

