---
title: "numberAssignment: unassignNumber"
description: "Unassign a telephone number from a user account"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# numberAssignment: unassignNumber

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates an asynchronous order to unassign a telephone number from a user account.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_numberassignment_unassignnumber" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-numberassignment-unassignnumber-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/teams/telephoneNumberManagement/numberAssignments/unassignNumber
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
|telephoneNumber|String|The telephone number intended to be unassigned|
|numberType|microsoft.graph.teamsAdministration.numberType|Number type for the telephone number to be unassigned. It can be direct Routing, calling plan, or operator connect.|

## Response

If successful, the method returns a `202 Accepted` response code with location response header with a link to get the action results.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "numberassignmentthis.unassignnumber"
}
-->
```http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/unassignNumber
Content-Type: application/json

{
  "telephoneNumber": "12061234567",
  "numberType": "directRouting"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/numberassignmentthisunassignnumber-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/numberassignmentthisunassignnumber-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/numberassignmentthisunassignnumber-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/numberassignmentthisunassignnumber-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/numberassignmentthisunassignnumber-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/numberassignmentthisunassignnumber-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/operations('VW5hc3NpZ25tZW50fDNmNmJmMWZkLTlhMzgtNDJkNi04ZDY0LTg0ZmNmZjlmYzdmNA')
```

