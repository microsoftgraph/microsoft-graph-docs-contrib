---
title: "Delete a userflowidentityproviders"
description: "Delete an identityProvider from a b2cIdentityUserFlow."
ms.localizationpriority: medium
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Delete a userflowidentityproviders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an identity provider from a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object. For more information about identity providers available for user flows, see the [identityProviders](../resources/identityproviderbase.md) API reference.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "b2cidentityuserflow_delete_userflowidentityproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/b2cidentityuserflow-delete-userflowidentityproviders-permissions.md)]

The work or school account needs to belong to one of the following roles:

* Global administrator
* External ID user flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identity/b2cUserFlows/{userflow-id}/userflowIdentityProviders/{identityProvider-id}/$ref
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_identity_b2cUserFlows_userflow_userflowIdentityProviders",
  "sampleKeys": ["B2C_test_signin_signup", "MSA-OIDC"]
}
-->

``` http
DELETE https://graph.microsoft.com/beta/identity/b2cUserFlows/B2C_test_signin_signup/userflowIdentityProviders/MSA-OIDC/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-identity-b2cuserflows-userflow-userflowidentityproviders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
