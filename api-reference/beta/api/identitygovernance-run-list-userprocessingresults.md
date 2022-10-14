---
title: "List userProcessingResults (for a run of a lifecycle workflow)"
description: "List user processing results of a workflow run."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List userProcessingResults (for a run of a lifecycle workflow)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get user processing results of a workflow [run](../resources/identitygovernance-run.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Global reader
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/{runId}/userProcessingResults/
```

## Optional query parameters

This method supports the `$select`, `$orderBy`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.userProcessingResults](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Example 1: List the user processing results in a run report for a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_run_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/dad77a47-6eda-4de7-bc37-fe8eb5aaf17d/userProcessingResults/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-get-run-taskprocessingresult-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-run-taskprocessingresult-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-run-taskprocessingresult-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-get-run-taskprocessingresult-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-get-run-taskprocessingresult-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-get-run-taskprocessingresult-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879e66-9ea9-48d0-804d-8fea672d0341')/runs('dad77a47-6eda-4de7-bc37-fe8eb5aaf17d')/userProcessingResults",
    "value": [
        {
            "id": "78b83505-6967-4168-a7ea-4921c0543ce9",
            "completedDateTime": "2022-08-24T23:28:11.1348863Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-08-24T23:28:01.6476554Z",
            "startedDateTime": "2022-08-24T23:28:04.490313Z",
            "totalTasksCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
            }
        },
        {
            "id": "16db611b-2518-48cf-89c0-3763abf8d0ab",
            "completedDateTime": "2022-08-24T23:28:11.1100134Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-08-24T23:28:01.6476554Z",
            "startedDateTime": "2022-08-24T23:28:04.5469497Z",
            "totalTasksCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97"
            }
        }
    ]
}
```

### Example 2: List the user processing results for a run in a workflow and select specific properties

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_run_taskprocessingresult_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/runs/e65e08a0-d68d-41dc-915b-8c4019af5cc2/userProcessingResults?$select=id,failedTasksCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,subject
```

#### Response

The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/runs('e65e08a0-d68d-41dc-915b-8c4019af5cc2')/userProcessingResults(id,failedTasksCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,subject)",
    "value": [
        {
            "id": "40efc576-840f-47d0-ab95-5abca800f8a2",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 0,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            }
        }
    ]
}
```