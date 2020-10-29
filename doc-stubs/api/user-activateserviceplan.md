---
title: "user: activateServicePlan"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# user: activateServicePlan
Namespace: microsoft.graph

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /me/activateServicePlan
POST /users/{usersId}/activateServicePlan
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|servicePlanId|Guid|**TODO: Add Description**|
|skuId|Guid|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a Boolean in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "user_activateserviceplan"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/activateServicePlan

Content-Type: application/json
Content-length: 51

{
  "servicePlanId": "Guid",
  "skuId": "Guid"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Boolean"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": "Boolean"
}
```

