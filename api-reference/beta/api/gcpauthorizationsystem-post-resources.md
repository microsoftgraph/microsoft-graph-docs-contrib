---
title: "Create gcpAuthorizationSystemResource"
description: "Create a new gcpAuthorizationSystemResource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create gcpAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.

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
In the request body, supply a JSON representation of the [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.

You can specify the following properties when creating a **gcpAuthorizationSystemResource**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Required.|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Optional.|
|resourceType|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_gcpauthorizationsystemresource_from_"
}
-->
``` http

```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystemResource",
  "id": "155827f8-9c46-bb8e-9714-4133d8720f2e",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

