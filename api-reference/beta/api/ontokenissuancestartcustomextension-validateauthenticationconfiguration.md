---
title: "onTokenIssuanceStartCustomExtension: validateAuthenticationConfiguration"
description: "An API to check potential warnings or errors in the endpoint and and authentication configuration for a onTokenIssuanceStartCustomExtension."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# onTokenIssuanceStartCustomExtension: validateAuthenticationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An API to check potential warnings or errors in the endpoint and and authentication configuration for a onTokenIssuanceStartCustomExtension.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Application|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /onTokenIssuanceStartCustomExtension/validateAuthenticationConfiguration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Supply a endpointConfiguration and authenticationConfiguration if querying at the root level.
Otherwise, for a specific custom extension, do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ontokenissuancestartcustomextensionthis.validateauthenticationconfiguration"
}
-->
``` http
POST https://graph.microsoft.com/beta/onTokenIssuanceStartCustomExtension/validateAuthenticationConfiguration
{
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://australia.contoso.com/users"
    },
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://extensibilityapi.azurwebsites.net/f9c5dc6b-d72b-4226-8ccd-801f7a290428"
    }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationConfigurationValidation"
}
-->
``` http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.authenticationConfigurationValidation",
    "errors": [
        {
            "code": "IncorrectResourceIdFormat",
            "message": "ResourceId should be in the format of 'api://{fully qualified domain name}/{appid}'"
        },
        {
            "code": "DomainNameDoesNotMatch",
            "message": "The fully qualified domain name in resourceId should match that of the targetUrl"
        },
        {
            "code": "ServicePrincipalNotFound",
            "message": "The appId of the resourceId should correspond to a real service principal in the tenant"
        }
    ],
    "warnings": [
        {
            "code": "PermissionNotGrantedToServicePrincipal",
            "message": "The permission CustomAuthenticationExtensions.Receive.Payload is not granted to the service principal of the resource app"
        },
    ]
}
```


### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ontokenissuancestartcustomextensionthis.validateauthenticationconfiguration"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/onTokenIssuanceStartCustomExtension/9f39f3bb-457c-4a2a-8099-0e480e7ea142/validateAuthenticationConfiguration
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationConfigurationValidation"
}
-->
``` http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.authenticationConfigurationValidation",
    "errors": [
        {
            "code": "IncorrectResourceIdFormat",
            "message": "ResourceId should be in the format of 'api://{fully qualified domain name}/{appid}'"
        },
        {
            "code": "DomainNameDoesNotMatch",
            "message": "The fully qualified domain name in resourceId should match that of the targetUrl"
        },
        {
            "code": "ServicePrincipalNotFound",
            "message": "The appId of the resourceId should correspond to a real service principal in the tenant"
        }
    ],
    "warnings": [
        {
            "code": "PermissionNotGrantedToServicePrincipal",
            "message": "The permission CustomAuthenticationExtensions.Receive.Payload is not granted to the service principal of the resource app"
        },
    ]
}
```


