---
title: "List authenticationStrengthPolicies"
description: "Get a list of the authenticationStrengthPolicy objects and their properties."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List authenticationStrengthPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects and their properties. This API returns both built-in and custom policies.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthroot_list_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthroot-list-policies-permissions.md)]

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
This method supports the `filter` OData query parameter on the `policyType` and `policyName` properties to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects in the response body.

## Examples

### Example 1: Get all authentication strength policies

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationstrengthpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies
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
The following example shows the response.
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
      "id": "7d718ef4-5493-4313-a52c-7401b7df3a9c",
      "createdDateTime": "2022-09-30T10:59:01Z",
      "modifiedDateTime": "2022-09-30T10:59:01Z",
      "displayName": "Contoso authentication level",
      "description": "The only authentication level allowed to access our secret apps",
      "policyType": "custom",
      "requirementsSatisfied": "mfa",
      "allowedCombinations": [
        "x509CertificateSingleFactor, fido2",
        "fido2"
      ],
      "combinationConfigurations": [
        {
          "@odata.type" : "fido2CombinationConfiguration",
          "id": "675ff4e1-7c6d-4a7f-9803-ad084d1b45b3",
          "allowedAAGUIDs": [
            "2ac80ddb-17bd-4575-b41c-0dc37ae3290d"
          ],
          "appliesToCombinations": ["fido2"]
        }
      ]
    },
    {
      "@odata.type" : "authenticationStrengthPolicy",
      "id": "00000000-0000-0000-0000-000000000002",
      "createdDateTime": "2022-09-30T10:59:01Z",
      "modifiedDateTime": "2022-09-30T10:59:01Z",
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
    },
    {
      "@odata.type" : "authenticationStrengthPolicy",
      "id": "00000000-0000-0000-0000-000000000003",
      "createdDateTime": "2022-09-30T10:59:01Z",
      "modifiedDateTime": "2022-09-30T10:59:01Z",
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
      "combinationConfigurations": []
    },
    {
      "@odata.type" : "authenticationStrengthPolicy",
      "id": "00000000-0000-0000-0000-000000000004",
      "createdDateTime": "2022-09-30T10:59:01Z",
      "modifiedDateTime": "2022-09-30T10:59:01Z",
      "displayName": "Phishing resistant MFA",
      "description": "Phishing resistant, Passwordless methods for the strongest authentication, such as a FIDO2 security key",
      "policyType": "builtIn",
      "requirementsSatisfied": "mfa",
      "allowedCombinations": [
        "windowsHelloForBusiness",
        "fido2",
        "x509CertificateMultiFactor"
      ],
      "combinationConfigurations": []
    }
  ]
}
```

### Example 2: Get policies that include specific authentication method modes

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationstrengthpolicy_filter_allowedCombinations"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies?$filter=allowedCombinations/any(x:x has 'sms, password')
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
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationstrengthpolicy-filter-allowedcombinations-java-snippets.md)]
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

The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies",
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
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies('00000000-0000-0000-0000-000000000002')/combinationConfigurations",
            "combinationConfigurations": []
        }
    ]
}
```
