---
title: "Get dataSourceContainer"
description: "Read the properties and relationships of a dataSourceContainer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get dataSourceContainer
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.

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
GET /dataSourceContainer
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

If successful, this method returns a `200 OK` response code and a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_datasourcecontainer"
}
-->
``` http
GET https://graph.microsoft.com/beta/dataSourceContainer
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.dataSourceContainer"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.ediscovery.dataSourceContainer",
    "id": "8476e6c9-e6c9-8476-c9e6-7684c9e67684",
    "status": "String",
    "lastModifiedDateTime": "String (timestamp)",
    "releasedDateTime": "String (timestamp)",
    "displayName": "String",
    "createdDateTime": "String (timestamp)"
  }
}
```

