---
title: "Create connectionOperation"
description: "Create a new connectionOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create connectionOperation
Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new connectionOperation object.

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
POST /connections/{connectionsId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.

The following table shows the properties that are required when you create the [connectionOperation](../resources/externalconnectors-connectionoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/externalconnectors-entity.md)|
|error|[microsoft.graph.publicError](../resources/externalconnectors-publicerror.md)|**TODO: Add Description**|
|status|connectionOperationStatus|**TODO: Add Description**. The possible values are: `unspecified`, `inprogress`, `completed`, `failed`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_connectionoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/connections/{connectionsId}/operations
Content-Type: application/json
Content-length: 173

{
  "@odata.type": "#microsoft.graph.externalConnectors.connectionOperation",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "status": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.connectionOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalConnectors.connectionOperation",
  "id": "60434bfe-4bfe-6043-fe4b-4360fe4b4360",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "status": "String"
}
```

