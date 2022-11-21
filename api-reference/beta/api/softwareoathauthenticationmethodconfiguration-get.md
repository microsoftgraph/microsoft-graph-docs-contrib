---
title: "Get softwareOathAuthenticationMethodConfiguration"
description: "Read the properties and relationships of a softwareOathAuthenticationMethodConfiguration object."
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get softwareOathAuthenticationMethodConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object, which represents the Third-Party Software OATH authentication method policy for the Azure AD tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/softwareOath
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

If successful, this method returns a `200 OK` response code and a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_softwareoathauthenticationmethodconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/softwareOath
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethodConfiguration",
    "id": "SoftwareOath",
    "state": "enabled",
    "includeTargets": [
      {
          "targetType": "group",
          "id": "all_users",
          "isRegistrationRequired": false,
          "isUsableForSignIn": true
      }
    ],
    "excludeTargets": [
      {
        "@odata.type": "microsoft.graph.excludeTarget"
      }
    ]
  }
}
```

