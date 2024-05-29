---
title: "Create homeRealmDiscoveryPolicy"
description: "Create a new homeRealmDiscoveryPolicy."
ms.localizationpriority: medium
author: "nickludwig"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
---

# Create homeRealmDiscoveryPolicy

Namespace: microsoft.graph



Create a new [homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "homerealmdiscoverypolicy_post_homerealmdiscoverypolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/homerealmdiscoverypolicy-post-homerealmdiscoverypolicies-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /policies/homeRealmDiscoveryPolicies
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of [homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_homerealmdiscoverypolicy_from_homerealmdiscoverypolicies"
}-->

```http
POST https://graph.microsoft.com/v1.0/policies/homeRealmDiscoveryPolicies
Content-type: application/json

{
    "definition": [
      "{\"HomeRealmDiscoveryPolicy\":{\"AccelerateToFederatedDomain\":true,\"PreferredDomain\":\"federated.example.edu\",\"AlternateIdLogin\":{\"Enabled\":true}}}"
    ],
    "displayName": "displayName-value",
    "isOrganizationDefault": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-homerealmdiscoverypolicy-from-homerealmdiscoverypolicies-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.homeRealmDiscoveryPolicy"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/homeRealmDiscoveryPolicies/$entity",
    "id": "8f865ec2-2b02-405f-91e7-cb580dfdfa56",
    "deletedDateTime": null,
    "definition": [
        "{\"HomeRealmDiscoveryPolicy\":     {\"AccelerateToFederatedDomain\":true,      \"PreferredDomain\":\"federated.example.edu\",      \"AlternateIdLogin\":{\"Enabled\":true}}}"
    ],
    "displayName": "displayName-value",
    "isOrganizationDefault": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create homeRealmDiscoveryPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

