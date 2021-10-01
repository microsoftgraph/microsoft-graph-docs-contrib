---
title: "Get externalConnection"
description: "Read the properties and relationships of an externalConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get externalConnection
Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externalConnection](../resources/externalconnectors-externalconnection.md) object.

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
GET /connections/{connectionsId}
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

If successful, this method returns a `200 OK` response code and an [externalConnection](../resources/externalconnectors-externalconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_externalconnection"
}
-->
``` http
GET https://graph.microsoft.com/beta/connections/{connectionsId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.externalConnectors.externalConnection",
    "id": "d36a1cbe-1cbe-d36a-be1c-6ad3be1c6ad3",
    "activitySettings": {
      "@odata.type": "microsoft.graph.externalConnectors.activitySettings"
    },
    "complianceSettings": {
      "@odata.type": "microsoft.graph.externalConnectors.complianceSettings"
    },
    "configuration": {
      "@odata.type": "microsoft.graph.externalConnectors.configuration"
    },
    "connectorId": "String",
    "description": "String",
    "ingestedItemsCount": "Integer",
    "name": "String",
    "searchSettings": {
      "@odata.type": "microsoft.graph.externalConnectors.searchSettings"
    },
    "state": "String"
  }
}
```

