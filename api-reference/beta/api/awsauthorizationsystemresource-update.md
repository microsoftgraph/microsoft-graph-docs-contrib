---
title: "Update awsAuthorizationSystemResource"
description: "Update the properties of an awsAuthorizationSystemResource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update awsAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.

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
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Required.|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Optional.|
|resourceType|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_awsauthorizationsystemresource"
}
-->
``` http

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
  "@odata.type": "#microsoft.graph.awsAuthorizationSystemResource",
  "id": "5688abd0-275c-44fd-392c-ee949a8a3f18",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

