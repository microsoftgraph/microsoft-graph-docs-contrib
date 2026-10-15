---
title: "Update userAssignment"
description: "Update the properties of a userAssignment object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update userAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a userAssignment object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userassignment-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userassignment-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|user|[identity](../resources/identity.md)|Identity of the user assigned to the task. Required.|
|assignedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) that made the assignment. Optional.|
|assignedDateTime|DateTimeOffset|Date and time the assignment was made. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [userAssignment](../resources/userassignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_userassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userAssignment",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "assignedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "assignedDateTime": "2026-06-10T08:00:00Z"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userAssignment",
  "id": "aec6cd49-aa47-7b42-5079-0a5b5197edd1",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "assignedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "assignedDateTime": "String (timestamp)",
  "capabilities": {
    "@odata.type": "microsoft.graph.userAssignmentCapability"
  }
}
```

