---
title: "Get permissionsDefinitionAuthorizationSystemIdentity"
description: "Read the properties and relationships of a permissionsDefinitionAuthorizationSystemIdentity object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get permissionsDefinitionAuthorizationSystemIdentity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) object.

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
GET /permissionsDefinitionAuthorizationSystemIdentity
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

If successful, this method returns a `200 OK` response code and a [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_permissionsdefinitionauthorizationsystemidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/permissionsDefinitionAuthorizationSystemIdentity
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity",
    "externalId": "2c4d3954-6465-8703-3fd5-7d2da34aa173",
    "identityType": "String",
    "source": {
      "@odata.type": "microsoft.graph.permissionsDefinitionIdentitySource"
    }
  }
}
```

