---
title: "Delete identityProvider from b2xIdentityUserFlow"
description: "Delete an identityProvider from a b2xIdentityUserFlow."
ms.localizationpriority: medium
doc_type: apiPageType
author: "nanguil"
ms.subservice: "entra-sign-in"
---

# Delete identityProvider from b2xIdentityUserFlow

Namespace: microsoft.graph

Delete an identity provider from a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object. For self-service sign-up user flows, the values can be `Google-OAUTH` or `Facebook-OAUTH`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "b2xidentityuserflow_delete_identityproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/b2xidentityuserflow-delete-identityproviders-permissions.md)]

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identity/b2xUserFlows/{id}/identityProviders/{id}/$ref
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error is returned with specific details.

## Example

### Request

Here's an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_b2xUserFlows_identityProviders_2",
  "sampleKeys": ["B2X_1_PartnerSignUp","Facebook-OAUTH"]
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/identity/b2xUserFlows/B2X_1_PartnerSignUp/identityProviders/Facebook-OAUTH/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-b2xuserflows-identityproviders-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
