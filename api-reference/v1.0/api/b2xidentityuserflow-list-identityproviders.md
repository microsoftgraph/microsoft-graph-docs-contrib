---
title: "List identityProviders"
description: "List all identityProviders in a b2xIdentityUserFlow."
ms.localizationpriority: medium
doc_type: apiPageType
author: "nanguil"
ms.prod: "identity-and-sign-in"
---

# List identityProviders

Namespace: microsoft.graph

Get the identity providers in a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "b2xidentityuserflow_list_identityproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/b2xidentityuserflow-list-identityproviders-permissions.md)]

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/b2xUserFlows/{id}/identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [identityProvider](../resources/identityprovider.md) objects in the response body.

## Example

### Request

Here's an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_b2xUserFlow_list_identityProviders",
  "sampleKeys": ["B2X_1_Partner"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/b2xUserFlows/B2X_1_Partner/identityProviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-b2xuserflow-list-identityproviders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-b2xuserflow-list-identityproviders-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-b2xuserflow-list-identityproviders-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-b2xuserflow-list-identityproviders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-b2xuserflow-list-identityproviders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-b2xuserflow-list-identityproviders-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-b2xuserflow-list-identityproviders-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-b2xuserflow-list-identityproviders-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProvider",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "Facebook-OAuth",
            "type": "Facebook",
            "name": "Facebook",
            "clientId": "clientIdFromFacebook",
            "clientSecret": "*****"
        },
        {
            "id": "Google-OAuth",
            "type": "Google",
            "name": "Google",
            "clientId": "clientIdFromGoogle",
            "clientSecret": "*****"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
 "description": "get_b2xuserflow_list_identityproviders",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
