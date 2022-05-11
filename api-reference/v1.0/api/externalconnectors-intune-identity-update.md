---
title: "Update identity"
description: "Update the properties of an identity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update identity
Namespace: microsoft.graph.externalConnectors



Update the properties of an [identity](../resources/externalconnectors-intune-identity.md) object.

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
PATCH /connections/{connectionsId}/groups/{externalGroupId}/members/{identityId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|type|identityType|**TODO: Add Description**. The possible values are: `user`, `group`, `externalGroup`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [identity](../resources/externalconnectors-intune-identity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_identity"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/connections/{connectionsId}/groups/{externalGroupId}/members/{identityId}
Content-Type: application/json
Content-length: 90

{
  "@odata.type": "#microsoft.graph.externalConnectors.identity",
  "type": "String"
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.externalConnectors.identity",
  "id": "b6ba0328-c201-4313-cd28-3e8464fe86e9",
  "type": "String"
}
```

