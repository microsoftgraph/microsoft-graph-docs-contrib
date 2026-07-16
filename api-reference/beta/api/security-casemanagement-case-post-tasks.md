---
title: "Create case task"
description: "Create a new task for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create case task

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [task](../resources/security-casemanagement-task.md) for a [case](../resources/security-casemanagement-case.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-case-post-tasks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-post-tasks-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/cases/{caseId}/tasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) object.

You can specify the following properties when creating a **task**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the resource. Required.|
|status|[microsoft.graph.security.caseManagement.taskStatus](../resources/security-casemanagement-task.md#taskstatus-values)|The lifecycle status of the resource. Required.|
|description|String|The description of the resource. Optional.|
|assignedTo|String|The user assigned to the resource. Optional.|
|closingNotes|String|Notes recorded when the resource is completed or closed. Optional.|
|dueDateTime|DateTimeOffset|The target completion date and time. Optional.|
|priority|[microsoft.graph.security.caseManagement.caseTaskPriority](../resources/security-casemanagement-task.md#casetaskpriority-values)|The priority assigned to the resource. Required.|
|category|[microsoft.graph.security.caseManagement.caseTaskCategory](../resources/security-casemanagement-task.md#casetaskcategory-values)|The functional category of the task. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_create_case_task"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/tasks
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
HTTP/1.1 201 Created
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
