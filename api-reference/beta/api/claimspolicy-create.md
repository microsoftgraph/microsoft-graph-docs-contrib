---
title: "Create or replace customClaimsPolicy"
description: "Create a new customClaimsPolicy object or replace an existing customClaimsPolicy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: apiPageType
---

# Create or replace customClaimsPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new customClaimsPolicy object or replace an existing customClaimsPolicy object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "serviceprincipal-put-claimspolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/claimspolicy-create-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /servicePrincipals/{servicePrincipalsId}/claimsPolicy
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
|includeBasicClaimSet|Boolean|This property determines whether the basic claim set is included in tokens affected by this policy. If set to `true`, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens, unless they're explicitly configured in this policy. Optional.|
|includeApplicationIdInIssuer|Boolean|If set to `true`, the application ID is added to the issuer claim. It is relevant only for SAML2.0 and if a custom signing key is used. Optional.|
|audienceOverride|String|If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise audienceOverride value is ignored. The value provided must be in the format of an absolute URI. Optional.|
|claims|[customClaimBase](../resources/customclaimbase.md) collection|This property defines which claims are present in the tokens affected by the policy, in addition to the basic claim set and the core claim set. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [customClaimsPolicy](../resources/customclaimspolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customclaimspolicy_from_"
}
-->
``` http
PUT https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/claimsPolicy
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
