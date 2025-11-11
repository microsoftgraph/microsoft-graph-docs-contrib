---
author: xiaoqwan
title: Cancel sharepointMigrationTask by Id
ms.localizationpriority: medium
description: Cancels the sharepointMigrationTask that was previously created, given the task's id, when invoked at the source organization
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 11/02/2025
---

# Cancel sharepointMigrationTask by Id

Attempt to Cancel a sharepointMigrationTask that specifies the move of a specific object from a source organization to a target organization. A cancel is permitted only if the sharepointMigrationTask has not started execution and is not in a state from which a revert would cause system instability.

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
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks/{id}/cancel
```

#### Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

#### Request Body

Do not supply a request body for this method.

#### Response

If successful, this method directly returns `204 No Content` response code and there is no content to return in the response body.
If not, it may return a `404 NOT FOUND` when there is no such task, or a `409 CONFLICT` if the cancel cannot proceed for some reason, with the errors in the sharepointMigrationTask containing the explanation, more error handling cases are listed below.

<!-- {
"blockType": "ignored"
}-->

### Error Conditions for **Cancel** API

| Scenario                                                   | Method    | Code | Message                                                                                          |
| ---------------------------------------------------------- | --------- | ---- | ------------------------------------------------------------------------------------------------ |
| Caller didn't provide the required parameters              | POST      | 400  | Cannot process the request because the required parameter {paramName} is missing.                |
| Trust relationship is not set up on target tenant          | POST      | 422  | There is no Cross-Tenant relationship established for partner {siteUrl} and role {soure/target}. |
| Migration task doesn't exist                               | POST      | 404  | The migration task {id} could not be found.                                                      |
| An in-progress migration task can't be cancelled           | POST      | 409  | Cannot process the cancel request because the task is in progress                                |
