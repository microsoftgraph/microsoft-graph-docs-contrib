---
title: "List sharePointMigrationEvent objects"
description: "Get a list of the sharePointMigrationEvent objects and their properties."
author: "wenzhou"
ms.date: 11/07/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# List sharePointMigrationEvent objects

Namespace: microsoft.graph

Get a list of [migration events](../resources/sharepointmigrationevent.md) for a particular job in a [fileStorageContainer](../resources/filestoragecontainer.md). The migration events remain valid for four days and can be queried as frequently as needed within the validity period.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointmigrationjob-list-progressevents-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationjob-list-progressevents-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{fileStorageContainerId}/migrationJobs/{migrationJobId}/progressEvents
```

## Optional query parameters

This method supports `$skipToken` OData query parameter to help paginate results. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointMigrationEvent](../resources/sharepointmigrationevent.md) objects in the response body.

## Examples

### Request

The following example shows how to get a list of **sharePointMigrationEvent** objects pertaining to the **sharePointMigrationJob** identified by job ID `7b04bfdd-5f8c-4bd9-97fa-a166a7922c61` that runs on the **fileStorageContainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`.

<!-- {
  "blockType": "request",
  "name": "list_progressevents"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs/7b04bfdd-5f8c-4bd9-97faa166a7922c61/progressEvents
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointMigrationJobStartEvent",
      "id": "ef788cc0-ff2c-02a7-5150-7aeb53a89445",
      "jobId": "7b04bfdd-5f8c-4bd9-97fa-a166a7922c61",
      "eventDateTime": "2025-05-08T09:08:04.451Z",
      "correlationId": "3f24ae21-8e47-4147-aa3d-31ce6b675337",
      "isRestarted": false,
      "totalRetryCount": 0
    },
    {
      "@odata.type": "#microsoft.graph.sharePointMigrationJobCancelledEvent",
      "id": "8ae8a944-1d91-4e16-3447-0e31ba915e1f",
      "jobId": "7b04bfdd-5f8c-4bd9-97fa-a166a7922c61",
      "eventDateTime": "2025-05-08T09:13:18.333Z",
      "correlationId": "3f24ae21-8e47-4147-aa3d-31ce6b675337",
      "totalRetryCount": 0,
      "isCancelledByUser": true
    },
    {
      "@odata.type": "#microsoft.graph.sharePointMigrationJobProgressEvent",
      "id": "e439f60c-1022-4eaa-dbbf-75c51361effe",
      "jobId": "7b04bfdd-5f8c-4bd9-97fa-a166a7922c61",
      "eventDateTime": "2025-05-08T09:13:45.565Z",
      "correlationId": "3f24ae21-8e47-4147-aa3d-31ce6b675337",
      "isCompleted": false,
      "filesProcessed": 12,
      "bytesProcessed": 12,
      "objectsProcessed": 23,
      "totalExpectedObjects": 15,
      "totalErrors": 1,
      "totalWarnings": 0,
      "totalRetryCount": 0,
      "waitTimeOnSqlThrottlingMs": 0,
      "totalDurationMs": 0,
      "cpuDurationMs": 0,
      "sqlDurationMs": 0,
      "sqlQueryCount": 0,
      "totalExpectedBytes": 0,
      "filesProcessedOnlyCurrentVersion": 11,
      "bytesProcessedOnlyCurrentVersion": 11
    },
    {
      "@odata.type": "#microsoft.graph.sharePointMigrationJobErrorEvent",
      "id": "8e37738c-76b2-bb16-346a-5b21cff6d1d0",
      "jobId": "7b04bfdd-5f8c-4bd9-97fa-a166a7922c61",
      "eventDateTime": "2025-05-08T09:13:46.028Z",
      "correlationId": "3f24ae21-8e47-4147-aa3d-31ce6b675337",
      "errorLevel": "FatalError",
      "totalRetryCount": 0,
      "objectType": "UnknownFutureValue",
      "error": 
      {
        "code": "-2147213196",
        "errorType": "microsoft.SharePoint.SPException",
        "message": "Operation canceled."
      }
    },
    {
      "@odata.type": "#microsoft.graph.sharePointMigrationJobProgressEvent",
      "id": "16ea963f-b78d-5016-e8b7-3c663ca30fd5",
      "jobId": "7b04bfdd-5f8c-4bd9-97fa-a166a7922c61",
      "eventDateTime": "2025-05-08T09:13:46.509Z",
      "correlationId": "3f24ae21-8e47-4147-aa3d-31ce6b675337",
      "isCompleted": true,
      "filesProcessed": 12,
      "bytesProcessed": 12,
      "objectsProcessed": 24,
      "totalExpectedObjects": 15,
      "totalErrors": 2,
      "totalWarnings": 0,
      "totalRetryCount": 0,
      "waitTimeOnSqlThrottlingMs": 0,
      "totalDurationMs": 0,
      "cpuDurationMs": 0,
      "sqlDurationMs": 0,
      "sqlQueryCount": 0,
      "totalExpectedBytes": 0,
      "filesProcessedOnlyCurrentVersion": 12,
      "bytesProcessedOnlyCurrentVersion": 12
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs/7b04bfdd-5f8c-4bd9-97fa-a166a7922c61/progressEvents?$skiptoken=ODY4MA"
}
```

