---
title: "Delete activity"
description: "Delete a comment activity from a case timeline."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete activity

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [comment](../resources/security-casemanagement-comment.md) activity from a [case](../resources/security-casemanagement-case.md) timeline. Only comment activities support delete.

> [!IMPORTANT]
> You can't use this API to delete comment activities from [incidentCase](../resources/security-casemanagement-incidentcase.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-casemanagement-activity-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-activity-delete-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/caseManagement/cases/{caseId}/activities/{activityId}
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
  "name": "security_casemanagement_delete_activity"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/caseManagement/cases/987757fb-6ef4-1061-17e7-9de0d088e1dd/activities/c5dcf8b0-0732-750b-0e35-7f44188423bf
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
