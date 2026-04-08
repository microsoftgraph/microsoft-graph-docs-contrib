---
title: "Update agentIdentityBlueprint"
description: "Update the properties of an agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Update agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-update-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /applications/{id}/microsoft.graph.agentIdentityBlueprint
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property | Type | Description |
|:---------|:-----|:------------|
| displayName | String | The display name for the agent identity blueprint. |
| managerApplications | Guid collection | A collection of application IDs for applications designated as managers of this agent identity blueprint. Manager applications can create agent blueprint principals, agent identities, and agent users for their managed blueprints without requiring high-privileged permissions such as `AgentIdentityBlueprintPrincipal.ReadWrite.All`. Currently, only Microsoft first-party application IDs can be set as values. Maximum of 10 values. Not nullable. |

## Response

If successful, this method returns a `204 No Content` response code.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Examples

### Example 1: Update the displayName of an agent identity blueprint

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint
Content-Type: application/json

{
  "displayName": "My New Name"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentidentityblueprint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update managerApplications on an agent identity blueprint

The `managerApplications` property is fully writable by both first-party (1P) and third-party (3P) callers on agent identity blueprints.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint_managerapplications"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11
Content-Type: application/json

{
  "managerApplications": [
    "77504268-3426-435e-99c0-9bc8656bc20e"
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentidentityblueprint-managerapplications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 3: Attempt to add a non-first-party application as a manager

Only Microsoft first-party application IDs can currently be set as values in the `managerApplications` collection.

#### Request

The following example shows a request attempting to add a non-first-party application.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint_managerapplications_non_first_party_error"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11
Content-Type: application/json

{
  "managerApplications": [
    "b43716e4-8cd1-4e88-b4ef-94611f4c6c46"
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentidentityblueprint-managerapplications-non-first-party-error-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the error response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
} -->
```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
  "error": {
    "code": "BadRequest",
    "message": "Application b43716e4-8cd1-4e88-b4ef-94611f4c6c46 is not a Microsoft first-party application. Managers must be Microsoft first-party applications.",
    "innerError": {
      "date": "2026-01-09T18:19:01",
      "request-id": "b67ef789-eb9c-4639-8847-4425f27c3c13",
      "client-request-id": "7b3c375e-a647-4e57-9452-6a8539b2256f"
    }
  }
}
```

### Example 4: Attempt to exceed the limit of 10 manager applications

Applications are limited to a maximum of 10 manager applications.

#### Request

The following example shows a request attempting to set 11 manager applications.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint_managerapplications_exceed_limit_error"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11
Content-Type: application/json

{
  "managerApplications": [
    "030bd5f7-db55-4925-959e-5cd332851a0d",
    "1bcc0f3a-18c2-44cb-851a-26e344c2b1bd",
    "6ed7705a-21de-4de9-9e98-95d1a2b5caa5",
    "1925068d-8f9f-4fe8-8d4f-af7d70dce238",
    "383b3cea-2ad2-4ca9-8c86-7f66e507ee77",
    "00f03cc4-3d1f-4b44-8bfa-fca7b181cbb9",
    "9d089274-e6dc-4640-bae2-0c88b4dc89a3",
    "8ea5293f-5d07-45dd-8333-64edfd907423",
    "2a0c3ca6-102f-4f22-a19e-4e5d1d99337d",
    "d40473a1-1d8c-4db9-bc87-1296c90e516b",
    "d902c7bd-7fe6-486a-86e8-00da01936fba"
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentidentityblueprint-managerapplications-exceed-limit-error-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the error response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
} -->
```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
  "error": {
    "code": "BadRequest",
    "message": "The number of ManagerApplications exceeds the limit. A blueprint can have only 10 ManagerApplications values.",
    "innerError": {
      "date": "2026-01-09T18:19:01",
      "request-id": "b67ef789-eb9c-4639-8847-4425f27c3c13",
      "client-request-id": "7b3c375e-a647-4e57-9452-6a8539b2256f"
    }
  }
}
```
