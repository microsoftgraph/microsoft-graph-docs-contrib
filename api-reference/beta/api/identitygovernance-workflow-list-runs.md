---
title: "List runs (for a lifecycle workflow)"
description: "Get a list of the run objects and their properties for a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List runs (for a lifecycle workflow)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the run objects and their properties for a [lifecycle workflow](../resources/identitygovernance-workflow.md).

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
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/
```

## Optional query parameters

This method supports the `$select`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) objects in the response body.

## Examples

### Example 1: List the run reports for a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-run-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-run-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-run-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-run-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-run-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-run-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.run)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879e66-9ea9-48d0-804d-8fea672d0341')/runs",
    "@odata.count": 2,
    "value": [
        {
            "id": "dad77a47-6eda-4de7-bc37-fe8eb5aaf17d",
            "completedDateTime": "2022-08-24T23:28:11.1348863Z",
            "failedTasksCount": 0,
            "failedUsersCount": 0,
            "lastUpdatedDateTime": "2022-08-24T23:33:09.186588Z",
            "processingStatus": "completed",
            "scheduledDateTime": "2022-08-24T23:28:01.6476554Z",
            "startedDateTime": "2022-08-24T23:28:04.5688752Z",
            "successfulUsersCount": 2,
            "totalTasksCount": 4,
            "totalUsersCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand"
        },
        {
            "id": "a512bb50-3423-4bdc-ad5e-9731095b3b9a",
            "completedDateTime": "2022-08-25T00:15:11.8535443Z",
            "failedTasksCount": 0,
            "failedUsersCount": 0,
            "lastUpdatedDateTime": "2022-08-25T00:20:05.8667912Z",
            "processingStatus": "completed",
            "scheduledDateTime": "2022-08-25T00:15:04.0253846Z",
            "startedDateTime": "2022-08-25T00:15:05.1818741Z",
            "successfulUsersCount": 2,
            "totalTasksCount": 4,
            "totalUsersCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand"
        }
    ]
}
```

### Example 2: List the run reports for a workflow and select specific properties

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/runs?$select=id,failedTasksCount,failedUsersCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,totalUsersCount,id
```

#### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.run)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/runs(id,failedTasksCount,failedUsersCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,totalUsersCount)",
    "value": [
        {
            "id": "e65e08a0-d68d-41dc-915b-8c4019af5cc2",
            "failedTasksCount": 0,
            "failedUsersCount": 0,
            "processingStatus": "completed",
            "totalTasksCount": 3,
            "totalUsersCount": 1,
            "totalUnprocessedTasksCount": 0
        }
    ]
}
```