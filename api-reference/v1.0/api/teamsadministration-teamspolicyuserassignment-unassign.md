---
title: "teamsPolicyUserAssignment: unassign"
description: "Unassign a Teams policy from a user using the user ID and policy type."
author: "praspatil05"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# teamsPolicyUserAssignment: unassign

Namespace: microsoft.graph.teamsAdministration

Unassign a Teams [policy](../resources/teamsadministration-teamspolicyuserassignment.md) from a user using the user ID and policy type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-teamspolicyuserassignment-unassign-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamspolicyuserassignment-unassign-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/teams/policy/userAssignments/unassign
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
|value|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|A collection of **teamsPolicyUserAssignment** objects that specify the user ID and policy type to unassign.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "teamspolicyuserassignmentthis.unassign"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/admin/teams/policy/userAssignments/unassign
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
      "userId": "5c802b19-3600-83f1-1767-7b9edc7f38ab",
      "policyType": "TeamsMeetingPolicy"
    }
  ]
}
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

