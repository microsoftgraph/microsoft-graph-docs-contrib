---
title: "List authenticationMethodModeDetails"
description: "Get a list of the authenticationMethodModeDetail objects and their properties."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List authenticationMethodModeDetails

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/authenticationStrengths/authenticationMethodModes
```

## Optional query parameters
This method does not support OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_authenticationmethodmodedetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationStrengths/authenticationMethodModes
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationMethodModeDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#authenticationMethodModeDetail",
  "value": [
    {
        "id" : "password",
        "displayName" : "Password",
        "authenticationMethod" : "password"
    },
    {
        "id" : "voice",
        "displayName" : "Voice",
        "authenticationMethod" : "voice"
    },
    {
        "id" : "softwareOath",
        "displayName" : "Software OATH tokens",
        "authenticationMethod" : "softwareOath"
    },
    {
        "id" : "sms",
        "displayName" : "SMS",
        "authenticationMethod" : "sms"
    },
    {
        "id" : "fido2",
        "displayName" : "FIDO2 Security Key",
        "authenticationMethod" : "fido2"
    },
    {
        "id" : "windowsHelloForBusiness",
        "displayName" : "Windows Hello for Business",
        "authenticationMethod" : "windowsHelloForBusiness"
    },
    {
        "id" : "microsoftAuthenticatorPush",
        "displayName" : "Microsoft Authenticator (push notification)",
        "authenticationMethod" : "microsoftAuthenticator"
    },
    {
        "id" : "deviceBasedPush",
        "displayName" : "Microsoft Authenticator (Passwordless)",
        "authenticationMethod" : "microsoftAuthenticator"
    },
    {
        "id" : "temporaryAccessPassOneTime",
        "displayName" : "Temporary Access Pass (one-time use)",
        "authenticationMethod" : "temporaryAccessPass"
    },
    {
        "id" : "temporaryAccessPassMultiUse",
        "displayName" : "Temporary Access Pass (multi-use)",
        "authenticationMethod" : "temporaryAccessPass"
    },
    {
        "id" : "email",
        "displayName" : "Email one-time passcode",
        "authenticationMethod" : "email"
    },
    {
        "id" : "x509CertificateSingleFactor",
        "displayName" : "Certificate-based authentication (single-factor)",
        "authenticationMethod" : "x509Certificate"
    },
    {
        "id" : "federatedMultiFactor",
        "displayName" : "Federation (multi-factor)",
        "authenticationMethod" : "federation"
    },
    {
        "id" : "federatedSingleFactor",
        "displayName" : "Federation (single-factor)",
        "authenticationMethod" : "federation"
    },
    {
        "id" : "x509CertificateMultiFactor",
        "displayName" : "Certificate-based authentication (multi-factor)",
        "authenticationMethod" : "x509Certificate"
    }
  ]
}
```

