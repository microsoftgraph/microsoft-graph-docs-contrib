---
title: "Create authenticationMethodTarget"
description: "Create a new authenticationMethodTarget object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create authenticationMethodTarget
Namespace: microsoft.graph

Create a new [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.

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
POST /qrAuthenticationMethodConfiguration/includeTargets
POST /smsAuthenticationMethodConfiguration/includeTargets
POST /fido2AuthenticationMethodConfiguration/includeTargets
POST /emailAuthenticationMethodConfiguration/includeTargets
POST /voiceAuthenticationMethodConfiguration/includeTargets
POST /passwordAuthenticationMethodConfiguration/includeTargets
POST /hardwareOathAuthenticationMethodConfiguration/includeTargets
POST /softwareOathAuthenticationMethodConfiguration/includeTargets
POST /temporaryAccessPassAuthenticationMethodConfiguration/includeTargets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.

The following table shows the properties that are required when you create the [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|targetType|authenticationMethodTargetType|**TODO: Add Description**. Possible values are: `user`, `group`, `unknownFutureValue`.|
|isRegistrationRequired|Boolean|**TODO: Add Description**|
|useForSignIn|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authenticationmethodtarget_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/qrAuthenticationMethodConfiguration/includeTargets
Content-Type: application/json
Content-length: 165

{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethodTarget"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "id": "2a5e4d1f-4d1f-2a5e-1f4d-5e2a1f4d5e2a",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean"
}
```

