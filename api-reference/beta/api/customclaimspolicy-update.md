---
title: "Update customClaimsPolicy"
description: "Update a custom claims policy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
ms.date: 07/11/2024
---

# Update customClaimsPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [customClaimsPolicy](../resources/customclaimspolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customclaimspolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/customclaimspolicy-update-permissions.md)]

[!INCLUDE [rbac-customclaimspolicy-apis-write](../includes/rbac-for-apis/rbac-customclaimspolicy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{servicePrincipalsId}/claimsPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customClaimsPolicy](../resources/customclaimspolicy.md) object.

You can specify the following properties when creating a **customClaimsPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|includeBasicClaimSet|Boolean|Determines whether the basic claim set is included in tokens affected by this policy. If set to `true`, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens, unless they're explicitly configured in this policy. Optional.|
|includeApplicationIdInIssuer|Boolean|Indicates whether the application ID is added to the claim. It is relevant only for SAML2.0 and if a custom signing key is used. the default value is `true`. Optional.|
|audienceOverride|String|If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise audienceOverride value is ignored. The value provided must be in the format of an absolute URI. Optional.|
|claims|[customClaimBase](../resources/customclaimbase.md) collection|Defines which claims are present in the tokens affected by the policy, in addition to the basic claim and the core claim set. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [customClaimsPolicy](../resources/customclaimspolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_customclaimspolicy_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/claimsPolicy
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customClaimsPolicy",
  "includeBasicClaimSet": "Boolean",
  "includeApplicationIdInIssuer": "Boolean",
  "audienceOverride": "String",
  "claims": [
    {
      "@odata.type": "microsoft.graph.customClaim"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-customclaimspolicy-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-customclaimspolicy-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-customclaimspolicy-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-customclaimspolicy-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-customclaimspolicy-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-customclaimspolicy-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-customclaimspolicy-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customClaimsPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customClaimsPolicy",
  "id": "f914f36d-167e-3fa7-cfa2-355cc5a36689",
  "includeBasicClaimSet": "Boolean",
  "includeApplicationIdInIssuer": "Boolean",
  "audienceOverride": "String",
  "claims": [
    {
      "@odata.type": "microsoft.graph.customClaim"
    }
  ]
}
```
