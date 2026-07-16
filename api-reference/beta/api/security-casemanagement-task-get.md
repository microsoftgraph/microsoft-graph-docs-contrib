---
title: "Get task"
description: "Read the properties and relationships of microsoft.graph.security.caseManagement.task object."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get task

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [task](../resources/security-casemanagement-task.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-task-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-task-get-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/cases/{caseId}/tasks/{taskId}
```

## Optional query parameters

This method supports the `$select` OData query parameter. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_get_task"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/tasks/{taskId}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.task"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.task",
  "id": "1601f158-fa4e-ceaa-7789-685b5e916d72",
  "createdDateTime": "2026-05-20T11:12:28Z",
  "createdBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-05-20T11:18:45Z",
  "lastModifiedBy": "user@contoso.com",
  "displayName": "Validate affected devices",
  "status": "new",
  "description": "Review affected devices and collect evidence",
  "assignedTo": "user@contoso.com",
  "closingNotes": "Investigation completed and documented",
  "dueDateTime": "2026-06-29T17:54:43Z",
  "priority": "high",
  "category": "investigate"
}
```
