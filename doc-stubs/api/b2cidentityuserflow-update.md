---
title: "Update b2cIdentityUserFlow"
description: "Update the properties of a b2cIdentityUserFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update b2cIdentityUserFlow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.

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
PATCH /identity/b2cUserFlows/{b2cIdentityUserFlowId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.

The following table shows the properties that are required when you update the [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|userFlowType|userFlowType|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md). The possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md)|
|apiConnectorConfiguration|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)|**TODO: Add Description**|
|authenticationMethods|b2cAuthenticationMethods|**TODO: Add Description**. The possible values are: `emailWithPassword`, `userName`, `phoneWithOneTimePassword`.|
|defaultLanguageTag|String|**TODO: Add Description**|
|isConditionalAccessEnforced|Boolean|**TODO: Add Description**|
|isJavaScriptEnabled|Boolean|**TODO: Add Description**|
|isLanguageCustomizationEnabled|Boolean|**TODO: Add Description**|
|multifactorAuthenticationConfiguration|[userFlowMultifactorAuthenticationConfiguration](../resources/userflowmultifactorauthenticationconfiguration.md)|**TODO: Add Description**|
|singleSignOnSessionConfiguration|[userFlowSingleSignOnSessionConfiguration](../resources/userflowsinglesignonsessionconfiguration.md)|**TODO: Add Description**|
|tokenClaimsConfiguration|[userFlowTokenClaimsConfiguration](../resources/userflowtokenclaimsconfiguration.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_b2cidentityuserflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/b2cUserFlows/{b2cIdentityUserFlowId}
Content-Type: application/json
Content-length: 815

{
  "@odata.type": "#microsoft.graph.b2cIdentityUserFlow",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single",
  "apiConnectorConfiguration": {
    "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
  },
  "authenticationMethods": "String",
  "defaultLanguageTag": "String",
  "isConditionalAccessEnforced": "Boolean",
  "isJavaScriptEnabled": "Boolean",
  "isLanguageCustomizationEnabled": "Boolean",
  "multifactorAuthenticationConfiguration": {
    "@odata.type": "microsoft.graph.userFlowMultifactorAuthenticationConfiguration"
  },
  "singleSignOnSessionConfiguration": {
    "@odata.type": "microsoft.graph.userFlowSingleSignOnSessionConfiguration"
  },
  "tokenClaimsConfiguration": {
    "@odata.type": "microsoft.graph.userFlowTokenClaimsConfiguration"
  }
}
```


### Response
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
  "@odata.type": "#microsoft.graph.b2cIdentityUserFlow",
  "id": "9b835f9f-5f9f-9b83-9f5f-839b9f5f839b",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single",
  "apiConnectorConfiguration": {
    "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
  },
  "authenticationMethods": "String",
  "defaultLanguageTag": "String",
  "isConditionalAccessEnforced": "Boolean",
  "isJavaScriptEnabled": "Boolean",
  "isLanguageCustomizationEnabled": "Boolean",
  "multifactorAuthenticationConfiguration": {
    "@odata.type": "microsoft.graph.userFlowMultifactorAuthenticationConfiguration"
  },
  "singleSignOnSessionConfiguration": {
    "@odata.type": "microsoft.graph.userFlowSingleSignOnSessionConfiguration"
  },
  "tokenClaimsConfiguration": {
    "@odata.type": "microsoft.graph.userFlowTokenClaimsConfiguration"
  }
}
```

