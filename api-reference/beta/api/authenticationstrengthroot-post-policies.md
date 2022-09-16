---
title: "Create authenticationStrengthPolicy"
description: "Create a new custom authenticationStrengthPolicy object."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create authenticationStrengthPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/authenticationStrengthPolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

You can specify the following properties when creating an **authenticationStrengthPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the policy to be created. Required.|
|description|String|The description of the policy to be created. Optional.|
|allowedCombinations|authenticationMethodModes collection|The authentication method combinations allowed by this authentication strength policy. The possible values of this flagged enum are: `password`, `voice`, `hardwareOath`, `softwareOath`, `sms`, `fido2`, `windowsHelloForBusiness`, `microsoftAuthenticatorPush`, `deviceBasedPush`, `temporaryAccessPassOneTime`, `temporaryAccessPassMultiUse`, `email`, `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `federatedSingleFactor`, `federatedMultiFactor`, `unknownFutureValue`. For the list of allowed combinations, call the [List authenticationMethodModes](../api/authenticationstrengthroot-list-authenticationmethodmodes.md) API. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_authenticationstrengthpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies
Content-Type: application/json
Content-length: 239

{
  "@odata.type" : "#microsoft.graph.authenticationStrengthPolicy",
  "displayName": "Contoso authentication level",
  "description": "The only authentication level allowed to access our secret apps",
  "allowedCombinations": [
      "password, hardwareOath",
      "password, sms"
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationStrengthPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type" : "authenticationStrengthPolicy",
  "id": "dd055c42-4218-4281-8631-f090e171f5cd",
  "createdDateTime": "2022-09-30T10:59:01Z",
  "modifiedDateTime": "2022-09-30T10:59:01Z",
  "displayName": "Contoso authentication level",
  "description": "The only authentication level allowed to access our secret apps",
  "policyType": "custom",
  "requirementsSatisfied": "mfa",
  "allowedCombinations": [
      "password, hardwareOath",
      "password, sms"
  ],
  "combinationConfigurations": []
}

```

