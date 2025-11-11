---
author: xiaoqwan
title: Create sharepointMigrationTask 
ms.localizationpriority: medium
description: Create a sharePointMigrationTask that specifies the migration of a specific resource from a source organization to a target organization.
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 11/02/2025
---

# Create sharePointMigrationTask

Create a sharePointMigrationTask that specifies the migration of a specific resource from a source organization to a target organization as indicated by the specified crossOrganizationMigrationParameters in the sharePointMigrationTask. The resource can be a User, a Group or a Site.
NOTE: Per the OData standard, the whole sharePointMigrationTask structure needs to be specified in the request body even though only the crossOrganizationMigrationParameters are used to instantiate the task. For required properties like id and status, empty or default values can be used - they are ignored during initial task creation.

When an existing sharePointMigrationTask is retrieved, it may contain not only the specifics of the source and target organizations and resources, but also the status of the migration and errors encountered during the migration operation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Permission type                        | Permissions                               |
| -------------------------------------- | ----------------------------------------- |
| Delegated (personal Microsoft account) | N/A                                       |
| Delegated (work or school account)     | SharePointCrossTenantMigration.Manage.All |
| Application                            | SharePointCrossTenantMigration.Manage.All |

<!-- {
  "blockType": "permissions",
  "name": "sharepointmigrationtask-create-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-create-permissions.md)]

The API calls happen on source site, and only add list items on my site root web, e.g., contoso-my.sharepoint.com. Then it will trigger a multi-geo site move job in SPO backend, enqueue and orchestrate a handful of tenant workflow jobs like backup, restore and cleanup backed by TJ infra.

User or site migration is differentiated by the OData type of `sharePointResourceMigrationParameters`, as opposed to using different sub-paths. If this is user's OneDrive migration, specify `sharePointUserMigrationParameters`. If this is regular SharePoint site migration, specify `sharePointSiteMigrationParameters`. If this is group-connected site migration, specify `sharePointGroupMigrationParameters`.

We allow customer to create user migration task by 2 options - create by userPrincipalName, or create by userObjectId

### 1. Create a user migration task

### 1.1. Create a user migration task by **userPrincipalName**

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

#### HTTP Response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

### 1.2. Create a user migration task by **userObjectId**

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546",
    },
    "targetUserIdentity":
    {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988",
    }
  }
}
```

#### HTTP Response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546"
    },
    "targetUserIdentity":
    {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988"
    }
  }
}
```

### 1.3. Create a user migration task by **userObjectId** and with specific "targetDataLocationCode"

The parameter - `targetDataLocationCode` represents the geographic location of the target organization, it's not required for **single-geo** tenants; if location code is null, then it goes to default geo location. For **multi-geo** tenant move, we also supports customer to specify the `targetOrganizationId`targetOrganizationId and `targetDataLocationCode` in case of customer is inconvenient to retrieve the host name, for example -

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationId": "78d010af-72cb-412f-8779-18ce9b5f553b",
    "targetDataLocationCode": null,
    "sourceUserIdentity":
    {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546",
    },
    "targetUserIdentity":
    {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988",
    }
  }
}
```

#### HTTP Response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationId": "78d010af-72cb-412f-8779-18ce9b5f553b",
    "targetDataLocationCode": "FRA",
    "sourceUserIdentity":
    {
      "id": "da157a29-f793-4dd6-9c73-41d2c73c2546",
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "id": "cb53ea98-6151-44cc-9c21-098a3c3e3988",
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

### 2. Create a regular site migration task

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT",
  }
}
```

#### HTTP response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT",
  }
}
```

### 3. Create a group-connected site migration task by **MailNickname**

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointGroupMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceGroupIdentity":
    {
      "mailNickname": "source-group"
    },
    "targetGroupIdentity":
    {
      "mailNickname": "target-group"
    }
  }
}
```

#### HTTP response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointGroupMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceGroupIdentity":
    {
      "mailNickname": "source-group"
    },
    "targetGroupIdentity":
    {
      "mailNickname": "target-group"
    }
  }
}
```

### 4. Create a user migration task with **PreferedStartTime** paramter

If customer specifies the 'preferredStartDateTime' paratemer when creating a migration task, then the task will be created but will NOT be executed until e.g. 2025/09/01

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    },
    "preferredStartDateTime": "2024-08-31T16:00:00Z"
  }
}
```

#### HTTP response

```JSON
Content-Type: application/json
{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "notStarted",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    },
    "preferredStartDateTime": "2024-08-31T16:00:00Z"
  }
}
```

### 5. Create a user migration task with **ValidateOnly=true** paramter

If customer specifies the 'ValidateOnly' paratemer to be true, it indicates that this is a request to validate if a this move is possible given the appropriate arguments above, but does not do any moves.

#### HTTP request

``` http
POST /solutions/sharePoint/migrations/crossOrganizationMigrationTasks
```

#### HTTP body

```JSON
Content-Type: application/json
{
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "validateOnly": true,
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

#### HTTP Response

```JSON
Content-Type: application/json
{
  "status": "Completed",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "validateOnly": true,
    "sourceUserIdentity":
    {
      "userPrincipalName": "source-user@contoso.onmicrosoft.com"
    },
    "targetUserIdentity":
    {
      "userPrincipalName": "target-user@fabrico.onmicrosoft.com"
    }
  }
}
```

### Error Conditions for **Create** API

| Scenario                                                                      | Method    | Code | Message                                                                                          |
| ----------------------------------------------------------------------------- | --------- | ---- | ------------------------------------------------------------------------------------------------ |
| Caller didn't provide the required parameters                                 | POST | 400  | Cannot process the request because the required parameter {paramName} is missing.                |
| Caller has insufficient permission                                            | POST | 403  | Access denied                                                                                    |
| Trust relationship is not set up on target tenant                             | POST      | 422  | There is no Cross-Tenant relationship established for partner {siteUrl} and role {soure/target}. |
| Source user's OneDrive does not exist                                         | POST      | 422  | Unable to get a OneDrive URL for source user UPN {sourceUserUpn}.                                |
| Identity mapping is not configured on target tenant                           | POST      | 422  | Identity map entry for source UPN {sourceUserUpn} does not exist on the target tenant.           |
| Source and target tenant are on the same farm                                 | POST      | 501  | It has been detected that partners reside in the same SPO location that prevents them from migrating. Please contact MS to resolve this issue. Once the issue has been resolved, please try running the migration again. |

