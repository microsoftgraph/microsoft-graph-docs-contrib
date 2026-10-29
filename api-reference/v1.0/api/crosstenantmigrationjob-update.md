---
title: "Update crossTenantMigrationJob"
description: "Update the completeAfterDateTime property of a crossTenantMigrationJob object."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# Update crossTenantMigrationJob

Namespace: microsoft.graph

Update the **completeAfterDateTime** property of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object. Only updates to **completeAfterDateTime** are supported. This property specifies when the migration job can proceed toward completion. If the value is in the past, the service treats it as already due and proceeds toward completion during its next processing cycle. This behavior doesn't bypass earlier validation or synchronization stages.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-update-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}
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
|completeAfterDateTime|DateTimeOffset|The date and time when the migration job can proceed toward completion. The value can be in the past.|

## Response

If successful, this method returns a `204 No Content` response code and no content in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_crosstenantmigrationjob"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea
Content-Type: application/json

{
  "completeAfterDateTime": "2025-05-22T17:14:52Z"
}
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
Content-Type: text/plain
```
