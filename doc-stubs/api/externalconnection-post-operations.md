---
title: "Create connectionOperation"
description: "Create a new connectionOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create connectionOperation
Namespace: microsoft.graph

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
POST /external/connections/{externalConnectionId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [connectionOperation](../resources/connectionoperation.md) object.

The following table shows the properties that are required when you create the [connectionOperation](../resources/connectionoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description**|
|status|connectionOperationStatus|**TODO: Add Description**. The possible values are: `unspecified`, `inprogress`, `completed`, `failed`.|



## Response

If successful, this method returns a `201 Created` response code and a [connectionOperation](../resources/connectionoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_connectionoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/connections/{externalConnectionId}/operations
Content-Type: application/json
Content-length: 154

{
  "@odata.type": "#microsoft.graph.connectionOperation",
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
  "@odata.type": "microsoft.graph.connectionOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.connectionOperation",
  "id": "8d991a0d-1a0d-8d99-0d1a-998d0d1a998d",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "status": "String"
}
```

