---
title: "Update externalConnection"
description: "Update the properties of an externalConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update externalConnection
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalConnection](../resources/externalconnection.md) object.

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
PATCH /external/connections/{externalConnectionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalConnection](../resources/externalconnection.md) object.

The following table shows the properties that are required when you update the [externalConnection](../resources/externalconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|configuration|[configuration](../resources/configuration.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|state|connectionState|**TODO: Add Description**. The possible values are: `draft`, `ready`, `obsolete`, `limitExceeded`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [externalConnection](../resources/externalconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_externalconnection"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/external/connections/{externalConnectionId}
Content-Type: application/json
Content-length: 211

{
  "@odata.type": "#microsoft.graph.externalConnection",
  "configuration": {
    "@odata.type": "microsoft.graph.configuration"
  },
  "description": "String",
  "name": "String",
  "state": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalConnection",
  "id": "33d64774-4774-33d6-7447-d6337447d633",
  "configuration": {
    "@odata.type": "microsoft.graph.configuration"
  },
  "description": "String",
  "name": "String",
  "state": "String"
}
```

