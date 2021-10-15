---
title: "Update microsoftAuthenticatorAuthenticationMethodTarget"
description: "Update the properties of a microsoftAuthenticatorAuthenticationMethodTarget object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update microsoftAuthenticatorAuthenticationMethodTarget
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.

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
PATCH /microsoftAuthenticatorAuthenticationMethodTarget
PATCH /microsoftAuthenticatorAuthenticationMethodConfiguration/includeTargets/{microsoftAuthenticatorAuthenticationMethodTargetId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|targetType|authenticationMethodTargetType|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md). The possible values are: `user`, `group`, `unknownFutureValue`. Required.|
|isRegistrationRequired|Boolean|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md). Required.|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|**TODO: Add Description**. The possible values are: `deviceBasedPush`, `push`, `any`. Required.|
|displayAppInformationRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. Required.|
|displayLocationInformationRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. Required.|
|numberMatchingRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_microsoftauthenticatorauthenticationmethodtarget"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/microsoftAuthenticatorAuthenticationMethodTarget
Content-Type: application/json
Content-length: 343

{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "authenticationMode": "String",
  "displayAppInformationRequiredState": "String",
  "displayLocationInformationRequiredState": "String",
  "numberMatchingRequiredState": "String"
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
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "id": "e1cac7aa-c7aa-e1ca-aac7-cae1aac7cae1",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "authenticationMode": "String",
  "displayAppInformationRequiredState": "String",
  "displayLocationInformationRequiredState": "String",
  "numberMatchingRequiredState": "String"
}
```

