---
title: "Delete task"
description: "Delete a task from a security case."
author: "alfeldsh"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete task

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [task](../resources/security-casemanagement-task.md) from a [case](../resources/security-casemanagement-case.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_task_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-task-delete-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/caseManagement/cases/{caseId}/tasks/{taskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_delete_task"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/tasks/{taskId}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
