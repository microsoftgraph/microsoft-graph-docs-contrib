---
title: "Update authorizationSystemTypeService"
description: "Update the properties of an authorizationSystemTypeService object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update authorizationSystemTypeService
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.

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
PATCH /authorizationSystemTypeService
PATCH /awsAuthorizationSystemTypeAction/service
PATCH /gcpAuthorizationSystemTypeAction/service
PATCH /azureAuthorizationSystemTypeAction/service
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



## Response

If successful, this method returns a `200 OK` response code and an updated [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authorizationsystemtypeservice"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authorizationSystemTypeService
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeService"
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
  "@odata.type": "#microsoft.graph.authorizationSystemTypeService",
  "id": "d4c8f13d-bc8b-4106-a522-759ada7b6e3d"
}
```

