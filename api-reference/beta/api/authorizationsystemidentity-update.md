---
title: "Update authorizationSystemIdentity"
description: "Update the properties of an authorizationSystemIdentity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update authorizationSystemIdentity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.

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
PATCH /authorizationSystemIdentity
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Optional.|
|externalId|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authorizationsystemidentity"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authorizationSystemIdentity
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemIdentity",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
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
  "@odata.type": "#microsoft.graph.authorizationSystemIdentity",
  "id": "f097c1d8-d362-3e9f-d056-cf9cb6b2f348",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

