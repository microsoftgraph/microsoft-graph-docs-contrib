---
title: "Update b2xIdentityUserFlow"
description: "Update the properties of a b2xIdentityUserFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update b2xIdentityUserFlow
Namespace: microsoft.graph

Update the properties of a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object.

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
PATCH /identity/b2xUserFlows/{b2xIdentityUserFlowId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object.

The following table shows the properties that are required when you update the [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|userFlowType|userFlowType|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md). Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_b2xidentityuserflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/b2xUserFlows/{b2xIdentityUserFlowId}
Content-Type: application/json
Content-length: 126

{
  "@odata.type": "#microsoft.graph.b2xIdentityUserFlow",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.b2xIdentityUserFlow",
  "id": "f515a1ea-a1ea-f515-eaa1-15f5eaa115f5",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single"
}
```

