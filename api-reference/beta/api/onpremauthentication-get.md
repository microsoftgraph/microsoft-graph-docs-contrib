---
title: "Get onPremAuthenticationPolicy"
description: "Retrieve the properties and relationships of onPremAuthenticationPolicy object."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/15/2025
---

# Get onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremauthenticationpolicy_get" } -->

[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/onPremAuthenticationPolicies/{id}
```

## Optional query parameters

This method supports the `$expand` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). When using `$expand`, make sure your app requests permissions to read the expanded objects.

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_onPremAuthenticationPolicy"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/{id}
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
HTTP/1.1 200 OK
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
  "description": "Get onPremAuthenticationPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
