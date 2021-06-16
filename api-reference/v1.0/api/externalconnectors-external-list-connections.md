---
title: "List connections"
description: "Get the externalConnection resources from the connections navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List connections
Namespace: microsoft.graph.externalConnectors



Get the externalConnection resources from the connections navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not applicable|
|Delegated (personal Microsoft account)|Not applicable|
|Application| ExternalItem.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/connections
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

If successful, this method returns a `200 OK` response code and a collection of [externalConnection](../resources/externalconnection.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_externalconnection"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/external/connections
```


### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalConnectors.externalConnection)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "contosohr",
      "name": "Contoso HR",
      "description": "Connection to index Contoso HR system",
      "configuration": {
        "authorizedAppIds": [
          "d310d35d-72ec-47dd-92f2-fb9c40936555"
        ]
      }
    },
    {
      "id": "contosofinance",
      "name": "Contoso Finance",
      "description": "Connection to index Contoso Finance system",
      "configuration": {
        "authorizedAppIds": [
          "fbdc7d4e-07f4-4143-8258-e5a2fcebeadb"
        ]
      }
    }
  ]
}
```

