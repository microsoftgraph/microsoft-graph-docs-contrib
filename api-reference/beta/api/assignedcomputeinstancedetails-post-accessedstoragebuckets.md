---
title: "Create authorizationSystemResource"
description: "Create a new authorizationSystemResource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create authorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authorizationSystemResource](../resources/authorizationsystemresource.md) object.

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
POST /privilegeEscalation/resources
POST /openNetworkAzureSecurityGroupFinding/virtualMachines
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authorizationSystemResource](../resources/authorizationsystemresource.md) object.

You can specify the following properties when creating an **authorizationSystemResource**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|resourceType|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [authorizationSystemResource](../resources/authorizationsystemresource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_authorizationsystemresource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/privilegeEscalation/resources
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemResource",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authorizationSystemResource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authorizationSystemResource",
  "id": "9034f4e1-5d4b-761d-4b79-71d3c0a48220",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

