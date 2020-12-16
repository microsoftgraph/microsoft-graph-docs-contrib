---
title: "Create securityQuestionAuthenticationMethod"
description: "Create a new securityQuestionAuthenticationMethod object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create securityQuestionAuthenticationMethod
Namespace: microsoft.graph

Create a new securityQuestionAuthenticationMethod object.

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
POST /user/authentication/securityQuestionMethods
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.

The following table shows the properties that are required when you create the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|question|String|**TODO: Add Description**|
|answer|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_securityquestionauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/authentication/securityQuestionMethods
Content-Type: application/json
Content-length: 141

{
  "@odata.type": "#microsoft.strongAuthentication.securityQuestionAuthenticationMethod",
  "question": "String",
  "answer": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.strongAuthentication.securityQuestionAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.strongAuthentication.securityQuestionAuthenticationMethod",
  "id": "ebde631f-631f-ebde-1f63-deeb1f63deeb",
  "question": "String",
  "answer": "String"
}
```

