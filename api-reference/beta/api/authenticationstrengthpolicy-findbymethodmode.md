---
title: "authenticationStrengthPolicy: findByMethodMode"
description: "Get authentication strength policies that include the specified authentication method modes."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# authenticationStrengthPolicy: findByMethodMode
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects and their properties filtered to only include policies that include the authentication method mode specified in the request.

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
GET /policies/authenticationStrengthPolicies/findByMethodMode(authenticationMethodModes=["authenticationMethodMode"])
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authenticationMethodModes|authenticationMethodModes collection|The authentication method modes to search for in existing authentication strength policies.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "authenticationstrengthpolicythis.findbymethodmode"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies/findByMethodMode(authenticationMethodModes=["sms"])
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationStrengthPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type" : "authenticationStrengthPolicy",
      "id": "00000000-0000-0000-0000-000000000002",
      "createdDateTime": "2022-09-30T10:59:01Z",
      "modifiedDateTime": "2022-09-30T10:59:01Z",
      "displayName": "Multi-factor authentication (MFA)",
      "description": "Combinations of methods that satisfy strong authentication, such as a password + SMS",
      "policyType": "builtIn",
      "requirementsSatisfied": "mfa",
      "allowedCombinations": [
          "windowsHelloForBusiness",
          "fido2",
          "x509CertificateMultiFactor",
          "deviceBasedPush",
          "temporaryAccessPassOneTime",
          "temporaryAccessPassMultiUse",
          "password, microsoftAuthenticatorPush",
          "password, softwareOath",
          "password, hardwareOath",
          "password, sms",
          "password, voice",
          "federatedMultiFactor",
          "federatedSingleFactor, microsoftAuthenticatorPush",
          "federatedSingleFactor, softwareOath",
          "federatedSingleFactor, hardwareOath",
          "federatedSingleFactor, sms",
          "federatedSingleFactor, voice"
      ],
      "combinationConfigurations": []
    }
  ]
}
```

