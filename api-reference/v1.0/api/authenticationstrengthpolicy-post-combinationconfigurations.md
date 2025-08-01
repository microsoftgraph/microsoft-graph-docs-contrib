---
title: "Create authenticationCombinationConfiguration"
description: "Create a new authenticationCombinationConfiguration object."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 06/25/2024
---

# Create authenticationCombinationConfiguration
Namespace: microsoft.graph

Create a new authenticationCombinationConfiguration object which can be of one of the following derived types:
* [fido2combinationConfiguration](../resources/fido2combinationconfiguration.md)
* [x509certificatecombinationconfiguration](../resources/x509certificatecombinationconfiguration.md)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthpolicy_post_combinationconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthpolicy-post-combinationconfigurations-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-write](../includes/rbac-for-apis/rbac-authenticationstrength-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.

You can specify the following properties when creating an **authenticationCombinationConfiguration**. Additionally, you must supply the @odata.type and required properties of the derived type of [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) that you're creating. For example, `"@odata.type" : "#microsoft.graph.fido2CombinationConfiguration"`.

|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|The combinations where this configuration applies. For **fido2combinationConfigurations** use `"fido2"`, for **x509certificatecombinationconfiguration** use `"x509CertificateSingleFactor"` or `"x509CertificateMultiFactor"`. Required.|


## Response

If successful, this method returns a `201 Created` response code and an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object which can be a [fido2combinationConfigurations](../resources/fido2combinationconfiguration.md) or an [x509certificatecombinationconfiguration](../resources/x509certificatecombinationconfiguration.md) object in the response body.

## Examples

### Example 1: Create a fido2combinationConfiguration object

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationcombinationconfiguration_fido2CombinationConfiguration"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}//combinationConfigurations
Content-Type: application/json
Content-length: 130

{
  "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",
  "allowedAAGUIDs": [
    "486c3b50-889c-480a-abc5-c04ef7c873e0",
    "c042882f-a621-40c8-94d3-9cde3a826fed",
    "ec454c08-4c77-4012-9d48-45f7f0fccdfb"
  ],
  "appliesToCombinations": ["fido2"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationcombinationconfiguration-fido2combinationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationcombinationconfiguration-fido2combinationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationcombinationconfiguration-fido2combinationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationcombinationconfiguration-fido2combinationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationcombinationconfiguration-fido2combinationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationcombinationconfiguration-fido2combinationconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationcombinationconfiguration-fido2combinationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationCombinationConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",
  "id": "96cb1a17-e45e-4b4f-8b4b-4a9490d63d66",
  "allowedAAGUIDs": [
    "486c3b50-889c-480a-abc5-c04ef7c873e0",
    "c042882f-a621-40c8-94d3-9cde3a826fed",
    "ec454c08-4c77-4012-9d48-45f7f0fccdfb"
  ],
  "appliesToCombinations": ["fido2"]
}
```

### Example 2: Create a x509CertificateCombinationConfiguration object

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_authenticationcombinationconfiguration_x509CertificateCombinationConfiguration"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations 
 
{ 
    "@odata.type": "#microsoft.graph.x509CertificateCombinationConfiguration", 
    "allowedIssuerSkis": [ 
        "9A4248C6AC8C2931AB2A86537818E92E7B6C97B6" 
    ], 
    "allowedPolicyOIDs": [], 
    "appliesToCombinations": [ 
        "x509CertificateSingleFactor " 
    ] 
} 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-authenticationcombinationconfiguration-x509certificatecombinationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationCombinationConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{ 
    "@odata.type": "#microsoft.graph.x509CertificateCombinationConfiguration", 
    "id" : "96cb1a17-e45e-4b4f-8b4b-4a9490d63d66",
    "allowedIssuerSkis": [ 
        "9A4248C6AC8C2931AB2A86537818E92E7B6C97B6" 
    ], 
    "allowedPolicyOIDs": [], 
    "appliesToCombinations": [ 
        "x509CertificateSingleFactor " 
    ] 
} 
```

