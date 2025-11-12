---
author: xiaoqwan
title: Cancel sharepointMigrationTask by ID
ms.localizationpriority: medium
description: Cancels the sharepointMigrationTask that was previously created, given the task's ID, when invoked at the source organization
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 11/02/2025
---

# Cancel sharepointMigrationTask by ID

Attempt to Cancel a sharepointMigrationTask that specifies the move of a specific object from a source organization to a target organization. You can cancel the sharepointMigrationTask only before it starts execution and while it is in a state where reverting won't cause system instability.

### Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Permission type                        | Permissions                               |
| -------------------------------------- | ----------------------------------------- |
| Delegated (personal Microsoft account) | N/A                                       |
| Delegated (work or school account)     | SharePointCrossTenantMigration.Manage.All |
| Application                            | SharePointCrossTenantMigration.Manage.All |

<!-- {
  "blockType": "permissions",
  "name": "sharepointmigrationtask-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-cancel-permissions.md)]

### Examples

#### HTTP request

```http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks/{ID}/cancel
```

#### Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

#### Request Body

Don't supply a request body for this method.

#### Response

If successful, this method directly returns `204 No Content` response code and there's no content to return in the response body.
If not, it may return a `404 NOT FOUND` when there's no such task, or a `409 CONFLICT` if the cancel can't proceed for some reason, with the errors in the sharepointMigrationTask containing the explanation, more error handling cases are listed below.

<!-- {
"blockType": "ignored"
}-->

### Error Conditions for **Cancel** API

| Scenario                                                   | Method    | Code | Message                                                                                          |
| ---------------------------------------------------------- | --------- | ---- | ------------------------------------------------------------------------------------------------ |
| Caller didn't provide the required parameters              | POST      | 400  | Can't process the request because the required parameter {paramName} is missing.                |
| Trust relationship isn't set up on target tenant          | POST      | 422  | There's no Cross-Tenant relationship established for partner {siteUrl} and role {soure/target}. |
| Migration task doesn't exist                               | POST      | 404  | The migration task {ID} couldn't be found.                                                      |
| An in-progress migration task can't be canceled           | POST      | 409  | Can't process the canceled request because the task is in progress                               |
