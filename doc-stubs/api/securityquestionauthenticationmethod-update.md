---
title: "Update securityQuestionAuthenticationMethod"
description: "Update the properties of a securityQuestionAuthenticationMethod object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update securityQuestionAuthenticationMethod
Namespace: microsoft.graph

Update the properties of a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.

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
PATCH /user/authentication/securityQuestionMethods/{securityQuestionAuthenticationMethodId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.

The following table shows the properties that are required when you update the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|question|String|**TODO: Add Description**|
|answer|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_securityquestionauthenticationmethod"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/authentication/securityQuestionMethods/{securityQuestionAuthenticationMethodId}
Content-Type: application/json
Content-length: 126

{
  "@odata.type": "#microsoft.graph.securityQuestionAuthenticationMethod",
  "question": "String",
  "answer": "String"
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
  "@odata.type": "#microsoft.graph.securityQuestionAuthenticationMethod",
  "id": "ebde631f-631f-ebde-1f63-deeb1f63deeb",
  "question": "String",
  "answer": "String"
}
```

