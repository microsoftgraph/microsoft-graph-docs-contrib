---
title: "agentIdentityBlueprint: unsetVerifiedPublisher"
description: "Unset the verified publisher of an agentIdentityBlueprint."
ms.localizationpriority: medium
author: "xurobertMSFT"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 04/05/2024
---

# agentIdentityBlueprint unsetVerifiedPublisher

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unset the [verifiedPublisher](../resources/verifiedPublisher.md) previously set on an [agentIdentityBlueprint](../resources/agentIdentityBlueprint.md), removing all verified publisher properties. For more information, see [Publisher verification](/azure/active-directory/develop/publisher-verification-overview).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentIdentityBlueprint_unsetverifiedpublisher" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentIdentityBlueprint-unsetverifiedpublisher-permissions.md)]

[!INCLUDE [rbac-application-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /applications/{id}/microsoft.graph.agentIdentityBlueprint/unsetVerifiedPublisher
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentIdentityBlueprint_unsetverifiedpublisher"
}-->

```http
POST https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint/unsetVerifiedPublisher
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentidentityblueprint-unsetverifiedpublisher-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
