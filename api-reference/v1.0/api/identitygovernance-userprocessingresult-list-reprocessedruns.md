---
title: "List reprocessedRuns for userProcessingResults"
description: "List user processing results of a workflow reprocessed run."
author: "AlexFilipin"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List reprocessedRuns for userProcessingResults

Namespace: microsoft.graph.identityGovernance

List user processing results of a workflow reprocessed run object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-userprocessingresult-list-reprocessedruns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-userprocessingresult-list-reprocessedruns-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/executionScope/{userProcessingResultId}/reprocessedRuns
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
  "name": "list_run_reprocessed_userprocessed"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/workflows/78799042-265a-4e8f-8d61-94a2dcd2d395/executionScope/dad77a47-6eda-4de7-bc37-fe8eb5aaf17d/reprocessedRuns
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-run-reprocessed-userprocessed-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
  "@odata.context": "https://canary.graph.microsoft.com/lcwdev/$metadata#identityGovernance/lifecycleWorkflows/workflows('78799042-265a-4e8f-8d61-94a2dcd2d395')/userProcessingResults",
  "value": [
   {
   "id": "78799042-265a-4e8f-8d61-94a2dcd2d395_638927104150522341",
   "completedDateTime": null,
   "failedTasksCount": 0,
   "failedUsersCount": 0,
   "lastUpdatedDateTime": "2025-09-05T23:07:02.9206151Z",
   "processingStatus": "inProgress",
   "scheduledDateTime": "2025-09-05T23:06:55.0522341Z",
   "startedDateTime": "2025-09-05T23:07:02.9206143Z",
   "successfulUsersCount": 0,
   "totalTasksCount": 0,
   "totalUsersCount": 0,
   "totalUnprocessedTasksCount": 0,
   "workflowExecutionType": "activatedWithScope",
   "activatedOnScope": {
    "@odata.type": "#microsoft.graph.identityGovernance.activateProcessingResultScope",
    "taskScope": "allTasks",
    "processingResults": [
     {
      "id": "78799042-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459357126_0cdd8963-1c30-4632-a1f2-ac96723069cb",
      "completedDateTime": "2025-09-05T20:50:16.3660921Z",
      "failedTasksCount": 1,
      "processingStatus": "completedWithErrors",
      "scheduledDateTime": "2025-09-05T20:48:50.4546835Z",
      "startedDateTime": "2025-09-05T20:49:37.6050235Z",
      "totalTasksCount": 1,
      "totalUnprocessedTasksCount": 0,
      "workflowExecutionType": "onDemand",
      "workflowVersion": 1,
      "subject": {
       "id": "0cdd8963-1c30-4632-a1f2-ac96723069cb"
      }
     }
    ]
   },
   "reprocessedRuns": []
  }
  ]
}
```
