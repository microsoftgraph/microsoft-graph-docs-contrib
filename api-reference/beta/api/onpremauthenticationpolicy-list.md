---
title: "List onPremAuthenticationPolicy"
description: "Get a list of onPremAuthenticationPolicy objects."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/15/2025
---

# List onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/onPremAuthenticationPolicies
```

## Optional query parameters

This method supports the `$expand`, `$filter`, `$select`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). When using `$expand`, make sure your app requests permissions to read the expanded objects.

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "onPremAuthenticationPolicies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies
```


### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "definition": [
        "definition-value"
      ],
      "displayName": "displayName-value",
      "isOrganizationDefault": true,
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 35c6eb79-08c2-43ce-b897-949d56d54c5e
2025-08-15 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List onPremAuthenticationPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
