---
title: "Get hardwareOathAuthenticationMethodConfiguration"
description: "Read the properties and relationships of a hardwareOathAuthenticationMethodConfiguration object."
author: "luc-msft"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get hardwareOathAuthenticationMethodConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object, which represents the hardware OATH authentication method policy for the Azure AD tenant. 

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/hardwareOath
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [hardwareOathAuthenticationMethodConfiguration](../resources/hardwareoathauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_hardwareoathauthenticationmethodconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/hardwareOath
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.hardwareOathAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
    "id": "e4c35010-6b85-afac-87a7-4977f6bd00ac",
    "state": "String",
    "includeTargets": [
      {
          "targetType": "group",
          "id": "all_users",
          "isRegistrationRequired": false
      }
    ],
    "excludeTargets": []
  }
}
```

