---
title: "List taskProcessingResults"
description: "Get the taskProcessingResult resources from a run."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskProcessingResults

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) resources for a [run](../resources/identitygovernance-run.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/{runId}/taskProcessingResults
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) objects in the response body.

## Examples

### Example 1: Get the task processing results in a run report from a workflow 

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/a977dbe8-0f3f-4ae6-b3a7-29e1010ac4cc/runs/33bf1a9c-2b26-49b6-996f-ca416c518341/taskProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-run-taskprocessingresult-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-run-taskprocessingresult-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-run-taskprocessingresult-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-run-taskprocessingresult-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-run-taskprocessingresult-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-run-taskprocessingresult-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('a977dbe8-0f3f-4ae6-b3a7-29e1010ac4cc')/runs('33bf1a9c-2b26-49b6-996f-ca416c518341')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2023-01-20T17:16:03.4863553Z",
            "createdDateTime": "2023-01-20T17:16:00.9095011Z",
            "id": "7a21089f-ec13-4e9c-997e-b31f4e59d41e",
            "processingStatus": "completed",
            "startedDateTime": "2023-01-20T17:16:02.8025169Z",
            "failureReason": null,
            "subject": {
                "id": "1baa57fa-3c4e-4526-ba5a-db47a9df95f0"
            },
            "task": {
                "category": "joiner,leaver",
                "continueOnError": false,
                "description": "Add user to selected groups",
                "displayName": "Add User To Groups",
                "executionSequence": 3,
                "id": "c8dbaed8-3d23-4e5a-8f65-130767639667",
                "isEnabled": true,
                "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
                "arguments": [
                    {
                        "name": "groupID",
                        "value": "1624be55-d924-491e-ac72-401f6f961e4d"
                    }
                ]
            }
        }
    ]
}
```

### Example 2: Get the specific properties of task processing results in a run report for a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/a977dbe8-0f3f-4ae6-b3a7-29e1010ac4cc/runs/33bf1a9c-2b26-49b6-996f-ca416c518341/taskProcessingResults?$select=id,failureReason,processingStatus,subject
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-run-taskprocessingresult-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-run-taskprocessingresult-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-run-taskprocessingresult-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-run-taskprocessingresult-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-run-taskprocessingresult-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-run-taskprocessingresult-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('a977dbe8-0f3f-4ae6-b3a7-29e1010ac4cc')/runs('33bf1a9c-2b26-49b6-996f-ca416c518341')/taskProcessingResults(id,failureReason,processingStatus,subject)",
    "value": [
        {
            "id": "7a21089f-ec13-4e9c-997e-b31f4e59d41e",
            "processingStatus": "completed",
            "failureReason": null,
            "subject": {
                "id": "1baa57fa-3c4e-4526-ba5a-db47a9df95f0"
            },
            "task": {
                "category": "joiner,leaver",
                "continueOnError": false,
                "description": "Add user to selected groups",
                "displayName": "Add User To Groups",
                "executionSequence": 3,
                "id": "c8dbaed8-3d23-4e5a-8f65-130767639667",
                "isEnabled": true,
                "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
                "arguments": [
                    {
                        "name": "groupID",
                        "value": "1624be55-d924-491e-ac72-401f6f961e4d"
                    }
                ]
            }
        }
    ]
}
```
