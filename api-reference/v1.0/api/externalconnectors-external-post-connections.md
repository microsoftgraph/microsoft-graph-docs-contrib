---
title: "Create externalConnection"
description: "Create a new externalConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create externalConnection
Namespace: microsoft.graph.externalConnectors



Create a new externalConnection object.

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
POST /external/connections
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalConnection](../resources/externalconnectors-externalconnection.md) object.

The following table shows the properties that are required when you create the [externalConnection](../resources/externalconnectors-externalconnection.md).

|Property|Type|Required (Y/N) |Description|
|:---|:---|:---|:---|
|id|String|Y|The connection ID|
|name|String|Y|The connection name|
|description|String|Y|The connection description|
|configuration|[configuration](../resources/externalconnectors-configuration.md)|N|The connection configurations|



## Response

If successful, this method returns a `201 Created` response code and an [externalConnection](../resources/externalconnectors-externalconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_externalconnection_from_connections"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/external/connections
Content-Type: application/json

{
  "id": "contosohr",
  "name": "Contoso HR",
  "description": "Connection to index Contoso HR system"
}
```


### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection"
}
-->
``` http
HTTP/1.1 200 Created
Content-Type: application/json

{
  "id": "0a4f4e74-4e74-0a4f-744e-4f0a744e4f0a",
  "name": "String",
  "description": "String",
  "configuration": {
    "authorizedAppIds": [
      "d310d35d-72ec-47dd-92f2-fb9c40936555"
    ]
  }
}
```

