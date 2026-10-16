---
title: "Get userAssignment"
description: "Read the properties and relationships of userAssignment object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get userAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [userAssignment](../resources/userassignment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userassignment-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userassignment-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
GET /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userAssignment](../resources/userassignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_userassignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/tasks/{taskId}/userAssignments/{userAssignmentId}
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
  "value": {
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
}
```

