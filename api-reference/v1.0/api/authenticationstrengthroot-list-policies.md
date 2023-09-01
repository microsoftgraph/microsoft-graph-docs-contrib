---
title: "List authenticationStrengthPolicies"
description: "Get a list of the authenticationStrengthPolicy objects and their properties."
author: "InbarckMS"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List authenticationStrengthPolicies
Namespace: microsoft.graph

Get a list of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects and their properties. This API returns both built-in and custom policies.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

[!INCLUDE [rbac-authenticationstrength-apis-read](../includes/rbac-for-apis/rbac-authenticationstrength-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationStrengthPolicies
```

## Optional query parameters
This method supports the `$filter` OData query parameter on the **policyType** and **policyName** properties to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects in the response body.

## Examples

### Example 1: Get all authentication strength policies

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationstrengthpolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/authenticationStrengthPolicies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationstrengthpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-authenticationstrengthpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationstrengthpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationstrengthpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationstrengthpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationstrengthpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationstrengthpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationstrengthpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies",
    "value": [
        {
            "id": "00000000-0000-0000-0000-000000000002",
            "createdDateTime": "2021-12-01T00:00:00Z",
            "modifiedDateTime": "2021-12-01T00:00:00Z",
            "displayName": "Multifactor authentication",
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
                "password,microsoftAuthenticatorPush",
                "password,softwareOath",
                "password,hardwareOath",
                "password,x509CertificateSingleFactor",
                "password,x509CertificateMultiFactor",
                "password,sms",
                "password,voice",
                "federatedMultiFactor",
                "microsoftAuthenticatorPush,federatedSingleFactor",
                "softwareOath,federatedSingleFactor",
                "hardwareOath,federatedSingleFactor",
                "sms,federatedSingleFactor",
                "voice,federatedSingleFactor"
            ],
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('00000000-0000-0000-0000-000000000002')/combinationConfigurations",
            "combinationConfigurations": []
        },
        {
            "id": "00000000-0000-0000-0000-000000000003",
            "createdDateTime": "2021-12-01T00:00:00Z",
            "modifiedDateTime": "2021-12-01T00:00:00Z",
            "displayName": "Passwordless MFA",
            "description": "Passwordless methods that satisfy strong authentication, such as Passwordless sign-in with the Microsoft Authenticator",
            "policyType": "builtIn",
            "requirementsSatisfied": "mfa",
            "allowedCombinations": [
                "windowsHelloForBusiness",
                "fido2",
                "x509CertificateMultiFactor",
                "deviceBasedPush"
            ],
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('00000000-0000-0000-0000-000000000003')/combinationConfigurations",
            "combinationConfigurations": []
        },
        {
            "id": "00000000-0000-0000-0000-000000000004",
            "createdDateTime": "2021-12-01T00:00:00Z",
            "modifiedDateTime": "2021-12-01T00:00:00Z",
            "displayName": "Phishing resistant MFA",
            "description": "Phishing resistant, Passwordless methods for the strongest authentication, such as a FIDO2 security key",
            "policyType": "builtIn",
            "requirementsSatisfied": "mfa",
            "allowedCombinations": [
                "windowsHelloForBusiness",
                "fido2",
                "x509CertificateMultiFactor"
            ],
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('00000000-0000-0000-0000-000000000004')/combinationConfigurations",
            "combinationConfigurations": []
        }
    ]
}
```


### Example 2: Get policies that include specific authentication method modes

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationstrengthpolicy_filter_allowedCombinations"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/authenticationStrengthPolicies?$filter=allowedCombinations/any(x:x has 'sms, password')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationstrengthpolicy-filter-allowedcombinations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-authenticationstrengthpolicy-filter-allowedcombinations-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationstrengthpolicy-filter-allowedcombinations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationstrengthpolicy-filter-allowedcombinations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationstrengthpolicy-filter-allowedcombinations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationstrengthpolicy-filter-allowedcombinations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies",
    "value": [
        {
            "id": "00000000-0000-0000-0000-000000000002",
            "createdDateTime": "2021-12-01T00:00:00Z",
            "modifiedDateTime": "2021-12-01T00:00:00Z",
            "displayName": "Multifactor authentication",
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
                "password,microsoftAuthenticatorPush",
                "password,softwareOath",
                "password,hardwareOath",
                "password,sms",
                "password,voice",
                "federatedMultiFactor",
                "microsoftAuthenticatorPush,federatedSingleFactor",
                "softwareOath,federatedSingleFactor",
                "hardwareOath,federatedSingleFactor",
                "sms,federatedSingleFactor",
                "voice,federatedSingleFactor"
            ],
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('00000000-0000-0000-0000-000000000002')/combinationConfigurations",
            "combinationConfigurations": []
        }
    ]
}
```
