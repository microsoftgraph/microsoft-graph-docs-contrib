---
title: "Update a userFlowIdentityProvider"
description: "Update an identityProvider in a b2xIdentityUserFlow."
ms.localizationpriority: medium
doc_type: apiPageType
author: "namkedia"
ms.subservice: "entra-sign-in"
---

# Update a userFlowIdentityProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an identity providers in a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "b2xidentityuserflow_userflowidentityproviders_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/b2xidentityuserflow-userflowidentityproviders-update-permissions.md)]

[!INCLUDE [rbac-b2xb2c-user-flows-apis](../includes/rbac-for-apis/rbac-b2xb2c-user-flows-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/b2xUserFlows/{userflow-id}/userflowIdentityProviders/$ref
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation with the `id` of the [identityProvider](../resources/identityproviderbase.md) you want to add. For self-service sign up user flows, the values can be `Google-OAUTH` or `Facebook-OAUTH`.

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error is returned with the specific error details.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_b2xuserflows_userflowidentityprovider",
  "sampleKeys": ["B2X_1_Test"]
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/b2xUserFlows/B2X_1_Test/userflowIdentityProviders/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test",
  "@odata.type": "#microsoft.graph.identityProvider"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-b2xuserflows-userflowidentityprovider-javascript-snippets.md)]
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
