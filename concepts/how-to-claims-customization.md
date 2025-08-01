---
title: Customize Claims with Claims Mapping Policy in Microsoft Graph
description: Learn how to add custom claims to access tokens in Microsoft Graph so your app can use extra user attributes to make authorization decisions.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: vimrang, odaishalabi
ms.subservice: entra-applications
ms.topic: how-to
ms.date: 06/19/2025
#customer intent: As a developer, I want to add custom claims to access tokens through Microsoft Graph so that my app can use additional user attributes.
---

# Customize claims with the claims mapping policy in Microsoft Graph

You can add extra user attributes to access tokens to help your app make better authorization decisions. This article shows how to use Microsoft Graph APIs to create and assign a claims mapping policy, add custom claims to access tokens, and verify the custom claim in the token.

## Prerequisites

To complete this tutorial, you need:

- Access to an API client such as [Graph Explorer](https://aka.ms/ge), signed in with a Microsoft Entra account that has the Application Administrator role and grant the following delegated permissions: *Policy.Read.All*, *Policy.ReadWrite.ApplicationConfiguration*, and *Application.ReadWrite.All*.
- A client service principal to assign the claims mapping policy to.
- A resource service principal that exposes APIs.

## Create a claims mapping policy

This policy adds the `department` claim from the user object to the token.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_create_claims_mapping_policy"
}-->
```http
POST https://graph.microsoft.com/beta/policies/claimsMappingPolicies
Content-type: application/json

{
 "definition": [
   "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\":[{\"Source\":\"user\",\"ID\":\"department\",\"JwtClaimType\":\"department\"}]}}"
 ],
 "displayName": "ExtraClaimsTest"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-claims-customization-create-claims-mapping-policy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-claims-customization-create-claims-mapping-policy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-claims-customization-create-claims-mapping-policy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-claims-customization-create-claims-mapping-policy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-claims-customization-create-claims-mapping-policy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-claims-customization-create-claims-mapping-policy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-claims-customization-create-claims-mapping-policy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Record the ID from the response to use later in this article.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.claimsMappingPolicy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/claimsMappingPolicies/$entity",
  "id": "06d5d20d-2955-45f8-a15d-cf2f434b8116",
  "deletedDateTime": null,
  "definition": [
      "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\":[{\"Source\":\"user\",\"ID\":\"department\",\"JwtClaimType\":\"department\"}]}}"
  ],
  "displayName": "ExtraClaimsTest",
  "isOrganizationDefault": false
}
```

You can also add more than one attribute to the policy. The following sample adds both the `department` and `companyname` claims to the token.

```json
{
  "definition": [
        "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\":[{\"Source\":\"user\",\"ID\":\"department\",\"JwtClaimType\":\"department\"},{\"Source\":\"user\",\"ID\":\"companyname\",\"JwtClaimType\":\"companyname\"}]}}"
    ],
 "displayName": "ExtraClaimsTest"
}
```

## Assign the policy to a resource service principal

The following request assigns the claims mapping policy to a service principal. A successful response returns `204 No Content`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_assign_claims_mapping_policy"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/3bdbbc1a-5e94-4c2b-895f-231d8af4beee/claimsMappingPolicies/$ref
Content-type: application/json

{
 "@odata.id": "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/06d5d20d-2955-45f8-a15d-cf2f434b8116"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-claims-customization-assign-claims-mapping-policy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-claims-customization-assign-claims-mapping-policy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-claims-customization-assign-claims-mapping-policy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-claims-customization-assign-claims-mapping-policy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-claims-customization-assign-claims-mapping-policy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-claims-customization-assign-claims-mapping-policy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-claims-customization-assign-claims-mapping-policy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Enable mapped claims in the resource application object

Update the application object to accept mapped claims and use access token version 2. A successful response returns `204 No Content`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_update_application"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/3dfbe85f-2d14-4660-b1a2-cb9c633ceebb
Content-type: application/json

{
  "api": {
    "acceptMappedClaims": true,
    "requestedAccessTokenVersion": 2
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/how-to-claims-customization-update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/how-to-claims-customization-update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/how-to-claims-customization-update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/how-to-claims-customization-update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/how-to-claims-customization-update-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/how-to-claims-customization-update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/how-to-claims-customization-update-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Test the access token

In an API client that allows you to follow the [Microsoft identity platform and OAuth 2.0 authorization code flow](/entra/identity-platform/v2-oauth2-auth-code-flow), obtain an access token. In the **scope** parameter, include one of the scopes exposed by your resource service principal, such as `openid profile email scope-defined-by-your-api` where `scope-defined-by-your-api` might be `api://00001111-aaaa-2222-bbbb-3333cccc4444/test`.

Use [jwt.ms](https://jwt.ms) to decode the access token. The `department` claim should appear in the token.

## Clean up resources

To unassign the claims mapping policy from the service principal, use the following request. A successful response returns `204 No Content`.

```http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/3bdbbc1a-5e94-4c2b-895f-231d8af4beee/claimsMappingPolicies//06d5d20d-2955-45f8-a15d-cf2f434b8116/$ref
```

## Related content

* [Claims customization using PowerShell and Claims Mapping Policy](/entra/identity-platform/claims-customization-powershell)
* [claimsMappingPolicy resource type](/graph/api/resources/claimsMappingPolicy)
