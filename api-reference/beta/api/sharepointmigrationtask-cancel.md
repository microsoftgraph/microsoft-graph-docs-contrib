---
title: "sharePointMigrationTask: cancel"
description: "Cancel a sharePointMigrationTask that moves a specific object from a source organization to a target organization."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# sharePointMigrationTask: cancel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that moves a specific object from a source organization to a target organization. Only cancel the **sharePointMigrationTask** before it starts and when reverting doesn't cause system instability.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointmigrationtask_cancel" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-cancel-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks/{sharePointMigrationTaskId}/cancel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointmigrationtaskthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks/3ed6d46d-13a3-4995-b6ea-a74a20b1fac0/cancel
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
