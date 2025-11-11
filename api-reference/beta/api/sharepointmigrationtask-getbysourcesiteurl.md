---
author: xiaoqwan
title: Get sharepointMigrationTask by source site url
description: Gets the sharepointMigrationTask that was previously created for a regular site, given the source site url, when invoked at the source organization.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 11/02/2025
---

# Get sharepointMigrationTask by source site url

Gets the sharepointMigrationTask that was previously created for a regular site, given the source site url. The returned sharepointMigrationTask contains source and target site url, the status of the migration, optional properties like the startedDateTime and finishedDateTime of the task, and also errors that give detailed information about the issues encountered during the execution of the sharepointMigrationTask.

### Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Delegated (work or school account)|SharePointCrossTenantMigration.Read.All|Not supported.|
|Application|SharePointCrossTenantMigration.Read.All|Not supported.|

<!-- {
  "blockType": "permissions",
  "name": "sharepointmigrationtask-getbysourcesiteurl-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-getbysourcesiteurl-permissions.md)]

### Examples

#### HTTP request

``` http
GET /solutions/sharePoint/migrations/crossOrganizationMigrationTasks/getBySourceSiteUrl(sourcesiteurl={sourcesiteurl})
```

#### Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

#### Request Body

Do not supply a request body for this method.

#### Response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "success",
  "startedDateTime": "2025-7-18T09:08:04.451Z",
  "lastUpdatedDateTime": "2025-7-18T09:13:46.028Z",
  "finishedDateTime": "2025-7-18T09:13:46.028Z",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationId": "3ef4e46d-13a3-4895-b6ea-a74a20hu728h",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT",
  }
}
```

### Error Conditions for **Get** API

| Scenario                                                                      | Method    | Code | Message                                                                                          |
| ----------------------------------------------------------------------------- | --------- | ---- | ------------------------------------------------------------------------------------------------ |
| Caller didn't provide the required parameters                                 | GET | 400  | Cannot process the request because the required parameter {paramName} is missing.                |
| Caller has insufficient permission                                            | GET | 403  | Access denied                                                                                    |
| Trust relationship is not set up on target tenant                             | GET      | 422  | There is no Cross-Tenant relationship established for partner {siteUrl} and role {soure/target}. |
| Migration task doesn't exist                                                  | GET | 404  | The migration task {id} could not be found.                                                      |
