---
title: "List reprocessedRuns for a run"
description: "Get a list of the reprocessed run objects and their properties for a lifecycle workflow."
author: "AlexFilipin"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List reprocessedRuns for a run

Namespace: microsoft.graph.identityGovernance

Get a list of the reprocessed [run](../resources/identitygovernance-run.md) objects and their properties for a lifecycle workflow.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-run-list-reprocessedruns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-run-list-reprocessedruns-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/executionScope/{userProcessingResultId}/reprocessedRuns/{runId}/reprocessedRuns
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [run](../resources/identitygovernance-run.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_run_reprocessed"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/workflows/78799042-265a-4e8f-8d61-94a2dcd2d395/executionScope/dad77a47-6eda-4de7-bc37-fe8eb5aaf17d/reprocessedRuns/59e537bd-f960-4bc3-83ad-3de051f4d7f9/reprocessedRuns
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-run-reprocessed-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.run"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/lcwdev/$metadata#identityGovernance/lifecycleWorkflows/workflows('78799042-265a-4e8f-8d61-94a2dcd2d395')/runs",
  "value": [
    {
   "id": "78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459357126",
   "completedDateTime": "2025-09-05T20:50:16.3660921Z",
   "failedTasksCount": 1,
   "failedUsersCount": 0,
   "lastUpdatedDateTime": "2025-09-05T20:54:48.2113264Z",
   "processingStatus": "completedWithErrors",
   "scheduledDateTime": "2025-09-05T20:49:05.9357126Z",
   "startedDateTime": "2025-09-05T20:49:38.1264771Z",
   "successfulUsersCount": 0,
   "totalTasksCount": 1,
   "totalUsersCount": 1,
   "totalUnprocessedTasksCount": 0,
   "workflowExecutionType": "onDemand",
   "activatedOnScope": null,
   "reprocessedRuns": [
    {
     "id": "78799042-265a-4e8f-8d61-94a2dcd2d395_638927099502974630",
     "completedDateTime": null,
     "failedTasksCount": 0,
     "failedUsersCount": 0,
     "lastUpdatedDateTime": "2025-09-05T22:59:10.341998Z",
     "processingStatus": "queued",
     "scheduledDateTime": "2025-09-05T22:59:10.297463Z",
     "startedDateTime": null,
     "successfulUsersCount": 0,
     "totalTasksCount": 0,
     "totalUsersCount": 0,
     "totalUnprocessedTasksCount": 0,
     "workflowExecutionType": "activatedWithScope",
     "activatedOnScope": null
    }
   ]
  }
 ]
}
```
