---
title: "Create authenticationStrengthPolicy"
description: "Create a new custom authenticationStrengthPolicy object."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 07/25/2024
---

# Create authenticationStrengthPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthroot_post_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthroot-post-policies-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-write](../includes/rbac-for-apis/rbac-authenticationstrength-apis-write.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

You can specify the following properties when creating an **authenticationStrengthPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the policy to be created. Required.|
|description|String|The description of the policy to be created. Optional.|
|allowedCombinations|authenticationMethodModes collection|The authentication method combinations allowed by this authentication strength policy. The possible values of this flagged enum are: `password`, `voice`, `hardwareOath`, `softwareOath`, `sms`, `fido2`, `windowsHelloForBusiness`, `microsoftAuthenticatorPush`, `deviceBasedPush`, `temporaryAccessPassOneTime`, `temporaryAccessPassMultiUse`, `email`, `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `federatedSingleFactor`, `federatedMultiFactor`, `unknownFutureValue`, `qrCodePin`.  Use the `Prefer: include-unknown-enum-members` request header to get the following members from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `qrCodePin`. For the list of allowed combinations, call the [List authenticationMethodModes](../api/authenticationstrengthroot-list-authenticationmethodmodes.md) API. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationstrengthpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies
Content-Type: application/json

{
    "displayName": "Example",
    "requirementsSatisfied": "mfa",
    "allowedCombinations": [
        "fido2"
    ],
    "combinationConfigurations@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies('5790842a-5bab-44c2-9cf1-b38d675b70ea')/combinationConfigurations",
    "combinationConfigurations": [
        {
            "@odata.type": "#microsoft.graph.fido2CombinationConfiguration",
            "id": "42235320-c8db-4d8c-9344-8f1ce87f734b",
            "appliesToCombinations": [
                "fido2"
            ],
            "allowedAAGUIDs": [
                "de1e552d-db1d-4423-a619-566b625cdc84",
                "90a3ccdf-635c-4729-a248-9b709135078f"
            ]
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationstrengthpolicy-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationstrengthpolicy-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationstrengthpolicy-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationstrengthpolicy-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationstrengthpolicy-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationstrengthpolicy-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationstrengthpolicy-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies/$entity",
    "id": "7daf2132-6a2d-4e78-a699-b823babf4436",
    "createdDateTime": "2024-07-23T17:10:58.1492045Z",
    "modifiedDateTime": "2024-07-23T17:10:58.1492045Z",
    "displayName": "Example",
    "description": "",
    "policyType": "custom",
    "requirementsSatisfied": "mfa",
    "allowedCombinations": [
        "fido2"
    ],
    "combinationConfigurations@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies('7daf2132-6a2d-4e78-a699-b823babf4436')/combinationConfigurations",
    "combinationConfigurations": [
        {
            "@odata.type": "#microsoft.graph.fido2CombinationConfiguration",
            "id": "c0fdf2f9-3b3f-4bbf-988c-17606ea4b4e4",
            "appliesToCombinations": [
                "fido2"
            ],
            "allowedAAGUIDs": [
                "de1e552d-db1d-4423-a619-566b625cdc84",
                "90a3ccdf-635c-4729-a248-9b709135078f"
            ]
        }
    ]
}
```

