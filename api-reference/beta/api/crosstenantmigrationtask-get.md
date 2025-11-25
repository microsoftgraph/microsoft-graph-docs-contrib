---
title: "Get crossTenantMigrationTask"
description: "Read the properties and relationships of crossTenantMigrationTask object."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# Get crossTenantMigrationTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md), which shows the details of the migration task for a single user of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md). The [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) contains the [status details](../resources/crosstenantmigrationservicestatusdetails.md) of migrations for the workloads specified in the crossTenantMigrationJob. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationtask-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationtask-get-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users/{crossTenantMigrationTaskId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_crosstenantmigrationtask"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1/users/6a88de8d-7027-44c1-8674-03f826aa1704
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/migrations/crossTenantMigrationJobs('012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1')/users/$entity",
  "id": "6a88de8d-7027-44c1-8674-03f826aa1704",
  "lastUpdatedDateTime": "2025-11-06T11:25:36Z",
  "currentStatus": [
    {
      "service": "ODSP",
      "status": "completed",
      "message": "",
      "errors": []
    },
    {
      "service": "Meeting",
      "status": "completed",
      "message": "",
      "errors": []
    },
    {
      "service": "Teams",
      "status": "completed",
      "message": "",
      "errors": []
    },
    {
      "service": "Exchange",
      "status": "completed",
      "message": "",
      "errors": []
    }
  ]
}
```

