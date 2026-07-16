---
title: "Update task"
description: "Update the properties of a task object."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update task

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [task](../resources/security-casemanagement-task.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-task-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-task-update-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/cases/{caseId}/tasks/{taskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Supply a JSON representation of the resource. For polymorphic resources, include `@odata.type` to identify the derived type.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the resource.|
|status|[microsoft.graph.security.caseManagement.taskStatus](../resources/security-casemanagement-task.md#taskstatus-values)|The lifecycle status of the resource.|
|description|String|The description of the resource.|
|assignedTo|String|The user assigned to the resource.|
|closingNotes|String|Notes recorded when the resource is completed or closed.|
|dueDateTime|DateTimeOffset|The target completion date and time.|
|priority|[microsoft.graph.security.caseManagement.caseTaskPriority](../resources/security-casemanagement-task.md#casetaskpriority-values)|The priority assigned to the resource.|
|category|[microsoft.graph.security.caseManagement.caseTaskCategory](../resources/security-casemanagement-task.md#casetaskcategory-values)|The functional category of the task.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_update_task"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/tasks/{taskId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.caseManagement.task",
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
