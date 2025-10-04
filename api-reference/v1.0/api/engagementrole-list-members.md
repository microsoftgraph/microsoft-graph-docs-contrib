---
title: "List members"
description: "Get a list of users with assigned roles in Viva Engage."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List members

Namespace: microsoft.graph

Get a list of users with assigned [roles](../resources/engagementrole.md) in Viva Engage.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "engagementrole_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/engagementrole-list-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/roles/{engagementRoleId}/members
```
<!-- GET /me/employeeExperience/assignedRoles/{engagementRoleId}/members -->

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementRoleMember](../resources/engagementrolemember.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_engagementrolemember"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/roles/{engagementRoleId}/members
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementRoleMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.engagementRoleMember",
      "id": "a40473a5-0fb4-a250-e029-f6fe33d07733",
      "userId": "String",
      "createdDateTime": "String (timestamp)"
    }
  ]
}
```
