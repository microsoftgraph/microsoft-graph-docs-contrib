---
title: "Get connectionOperation"
description: "Read the properties and relationships of a connectionOperation object."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Get connectionOperation

Namespace: microsoft.graph.externalConnectors

Read the properties and relationships of a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not applicable|
|Delegated (personal Microsoft account)|Not applicable|
|Application| ExternalConnection.ReadWrite.OwnedBy |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/connections/{connectionsId}/operations/{connectionOperationId}
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

If successful, this method returns a `200 OK` response code and a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object in the response body.

## Examples

### Request


<!-- {
  "blockType": "request",
  "name": "get_connectionoperation"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/external/connections/contosohr/operations/3ed1595a-4bae-43c2-acda-ef973e581323
```



### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.connectionOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed1595a-4bae-43c2-acda-ef973e581323",
  "status": "failed",
  "error": {
    "message": "Server error, something went wrong"
  }
}
```

