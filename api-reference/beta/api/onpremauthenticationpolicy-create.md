---
title: "Create new onPremAuthenticationPolicy"
description: "Create a new onPremAuthenticationPolicy."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/15/2025
---

# Create new onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST policies/onPremAuthenticationPolicies
```

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-type  | application/json. Required.                                                                               |

## Request body

In the request body, supply a JSON representation of a [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "create_onPremAuthenticationPolicies_from_onPremAuthenticationPolicies"
}-->

```http
POST https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies
Content-type: application/json

{
  "definition": [
    "definition-value"
  ],
  "displayName": "displayName-value",
  "isOrganizationDefault": true
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "definition": [
    "definition-value"
  ],
  "displayName": "displayName-value",
  "isOrganizationDefault": true,
  "id": "id-value"
}
```

<!-- uuid: 35c6eb79-08c2-43ce-b897-949d56d54c5e
2025-08-15 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create onPremAuthenticationPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
