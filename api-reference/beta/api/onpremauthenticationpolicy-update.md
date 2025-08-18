---
title: "Update onPremAuthenticationPolicy"
description: "Update the properties of onPremAuthenticationPolicy object."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/15/2025
---

# Update onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /policies/onPremAuthenticationPolicies/{id}
```

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-type  | application/json. Required.                                                                               |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property              | Type              | Description                                                                                                                                                                              |
| :-------------------- | :---------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| definition            | String collection | A string collection containing a JSON string that defines the rules and settings for this policy. Required.                                                                              |
| description           | String            | Description for this policy.                                                                                                                                                             |
| displayName           | String            | Display name for this policy. Required.                                                                                                                                                  |
| isOrganizationDefault | Boolean           | If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false. |

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_onpremauthenticationpolicy"
}-->

```http
PATCH https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/{id}
Content-type: application/json

{
  "definition": [
    "definition-value"
  ],
  "displayName": "displayName-value",
  "isOrganizationDefault": true
}
```

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy"
} -->

```http
HTTP/1.1 204 No Content
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
  "description": "Update onpremauthenticationpolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
