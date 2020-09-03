---
title: "Get authenticationMethodTarget"
description: "Read the properties and relationships of an authenticationMethodTarget object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get authenticationMethodTarget
Namespace: microsoft.graph

Read the properties and relationships of an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.

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
GET /authenticationMethodTarget
GET /qrAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /smsAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /fido2AuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /emailAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /voiceAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /passwordAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /hardwareOathAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /softwareOathAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
GET /temporaryAccessPassAuthenticationMethodConfiguration/includeTargets/{authenticationMethodTargetId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_authenticationmethodtarget"
}
-->
``` http
GET https://graph.microsoft.com/beta/authenticationMethodTarget
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
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.authenticationMethodTarget",
    "id": "2a5e4d1f-4d1f-2a5e-1f4d-5e2a1f4d5e2a",
    "targetType": "String",
    "isRegistrationRequired": "Boolean",
    "useForSignIn": "Boolean"
  }
}
```

