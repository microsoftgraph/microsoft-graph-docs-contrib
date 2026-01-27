---
title: "teamsPolicyUserAssignment: assign"
description: "Assign a Teams policy to a user using the user ID, policy type, and policy ID."
author: "praspatil05"
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# teamsPolicyUserAssignment: assign

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a Teams [policy](../resources/teamsadministration-teamspolicyuserassignment.md) to a user using the user ID, policy type, and policy ID.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_teamspolicyuserassignment_assign" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamspolicyuserassignment-assign-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/teams/policy/userAssignments/assign
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|value|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|A collection of **teamsPolicyUserAssignment** objects that specify the user ID, policy type, and policy ID to assign.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamspolicyuserassignmentthis.assign"
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/policy/userAssignments/assign
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
      "userId": "5c802b19-3600-83f1-1767-7b9edc7f38ab",
      "policyType": "TeamsMeetingPolicy",
      "policyId": "VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamspolicyuserassignmentthisassign-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamspolicyuserassignmentthisassign-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamspolicyuserassignmentthisassign-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamspolicyuserassignmentthisassign-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamspolicyuserassignmentthisassign-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamspolicyuserassignmentthisassign-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

