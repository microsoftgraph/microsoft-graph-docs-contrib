---
title: "List userProcessingResults (for a lifecycle workflow)"
description: "Get a list of the userProcessingResult objects and their properties for a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List userProcessingResults (for a lifecycle workflow)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the **userProcessingResult** resources for a [workflow](../resources/identitygovernance-workflow.md).

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
GET /workflow/userProcessingResults
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) objects in the response body.

## Examples

### Example 1: List the user processing results for a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_userprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/userProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-userprocessingresult-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-userprocessingresult-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-userprocessingresult-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-userprocessingresult-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-userprocessingresult-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-userprocessingresult-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.userProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/userProcessingResults",
    "value": [
        {
            "id": "e831ffea-4156-482a-ba43-a8161f83efa8",
            "completedDateTime": "2022-08-24T18:27:43.1283747Z",
            "failedTasksCount": 1,
            "processingStatus": "failed",
            "scheduledDateTime": "2022-08-24T18:27:28.4105696Z",
            "startedDateTime": "2022-08-24T18:27:34.47941Z",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 2,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "b276ff04-835d-414c-a2a7-5c59e37cccc9"
            }
        },
        {
            "id": "c1fab0b4-222d-4bdf-ab09-eb99fc5a8061",
            "completedDateTime": "2022-08-24T18:35:53.5871731Z",
            "failedTasksCount": 1,
            "processingStatus": "failed",
            "scheduledDateTime": "2022-08-24T18:35:39.0021384Z",
            "startedDateTime": "2022-08-24T18:35:48.0824202Z",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 2,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 1,
            "subject": {
                "id": "b276ff04-835d-414c-a2a7-5c59e37cccc9"
            }
        },
        {
            "id": "0481a153-f437-45f0-b07c-ebe1008f10c5",
            "completedDateTime": "2022-08-24T23:26:41.4425594Z",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "scheduledDateTime": "2022-08-24T23:26:24.1178409Z",
            "startedDateTime": "2022-08-24T23:26:29.315238Z",
            "totalTasksCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "workflowVersion": 13,
            "subject": {
                "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
            }
        }
    ]
}
```

### Example 2: List specific properties of user processing results for a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_userprocessingresult_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/userProcessingResults?$select=id,failedTasksCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,workflowExecutionType,subject
```

#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.userProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/userProcessingResults",
    "value": [
        {
            "id": "e831ffea-4156-482a-ba43-a8161f83efa8",
            "failedTasksCount": 1,
            "processingStatus": "failed",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 2,
            "workflowExecutionType": "onDemand",
            "subject": {
                "id": "b276ff04-835d-414c-a2a7-5c59e37cccc9"
            }
        },
        {
            "id": "c1fab0b4-222d-4bdf-ab09-eb99fc5a8061",
            "failedTasksCount": 1,
            "processingStatus": "failed",
            "totalTasksCount": 3,
            "totalUnprocessedTasksCount": 2,
            "workflowExecutionType": "onDemand",
            "subject": {
                "id": "b276ff04-835d-414c-a2a7-5c59e37cccc9"
            }
        },
        {
            "id": "0481a153-f437-45f0-b07c-ebe1008f10c5",
            "failedTasksCount": 0,
            "processingStatus": "completed",
            "totalTasksCount": 2,
            "totalUnprocessedTasksCount": 0,
            "workflowExecutionType": "onDemand",
            "subject": {
                "@odata.type": "microsoft.graph.user",
                "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
            }
        }
    ]
}
```