---
title: "List taskProcessingResults (for a run)"
description: "Get the taskProcessingResult resources from a run."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskProcessingResults (for a run)

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
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta//identityGovernance/lifecycleWorkflows/workflows/519266d1-784e-4139-8033-9878968ffdbd/runs/90ff9d1b-8fad-456b-9eb0-8f52a7af71ab/taskProcessingResults
```

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('519266d1-784e-4139-8033-9878968ffdbd')/runs('90ff9d1b-8fad-456b-9eb0-8f52a7af71ab')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2023-01-04T17:01:49.9898834Z",
            "createdDateTime": "2023-01-04T17:01:45.9668228Z",
            "id": "85a0a8cb-2cc0-4f75-8655-69ff4351e086",
            "processingStatus": "completed",
            "startedDateTime": "2023-01-04T17:01:49.402984Z",
            "failureReason": null,
            "subject": {
                "id": "d8f1592e-5067-4ff8-a55a-a0acc8447563"
            },
            "task": {
                "category": "joiner",
                "continueOnError": false,
                "description": "Send onboarding reminder email to user’s manager",
                "displayName": "Send onboarding reminder email",
                "executionSequence": 1,
                "id": "c91d58de-f4be-48e7-8fea-c9308bf2cb23",
                "isEnabled": true,
                "taskDefinitionId": "3C860712-2D37-42A4-928F-5C93935D26A1",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2023-01-04T17:01:50.3968105Z",
            "createdDateTime": "2023-01-04T17:01:46.0878008Z",
            "id": "a7036fcd-7587-4aab-9518-c6e9cb35d1cb",
            "processingStatus": "canceled",
            "startedDateTime": null,
            "failureReason": null,
            "subject": {
                "id": "d8f1592e-5067-4ff8-a55a-a0acc8447563"
            },
            "task": {
                "category": "joiner",
                "continueOnError": false,
                "description": "Generate Temporary Access Pass and send via email to user's manager",
                "displayName": "Generate TAP and Send Email",
                "executionSequence": 2,
                "id": "92c0bdc2-ed3f-484d-971f-8032afe86cd8",
                "isEnabled": true,
                "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
                "arguments": [
                    {
                        "name": "tapLifetimeMinutes",
                        "value": "60"
                    },
                    {
                        "name": "tapIsUsableOnce",
                        "value": "true"
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
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta//identityGovernance/lifecycleWorkflows/workflows/519266d1-784e-4139-8033-9878968ffdbd/runs/90ff9d1b-8fad-456b-9eb0-8f52a7af71ab/taskProcessingResults?$select=id,failureReason,processingStatus,subject,task
```

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('519266d1-784e-4139-8033-9878968ffdbd')/runs('90ff9d1b-8fad-456b-9eb0-8f52a7af71ab')/taskProcessingResults(id,failureReason,processingStatus,subject,task)",
    "value": [
        {
            "completedDateTime": "2023-01-04T17:01:49.9898834Z",
            "createdDateTime": "2023-01-04T17:01:45.9668228Z",
            "id": "85a0a8cb-2cc0-4f75-8655-69ff4351e086",
            "processingStatus": "completed",
            "startedDateTime": "2023-01-04T17:01:49.402984Z",
            "failureReason": null,
            "subject": {
                "id": "d8f1592e-5067-4ff8-a55a-a0acc8447563"
            },
            "task": {
                "category": "joiner",
                "continueOnError": false,
                "description": "Send onboarding reminder email to user’s manager",
                "displayName": "Send onboarding reminder email",
                "executionSequence": 1,
                "id": "c91d58de-f4be-48e7-8fea-c9308bf2cb23",
                "isEnabled": true,
                "taskDefinitionId": "3C860712-2D37-42A4-928F-5C93935D26A1",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2023-01-04T17:01:50.3968105Z",
            "createdDateTime": "2023-01-04T17:01:46.0878008Z",
            "id": "a7036fcd-7587-4aab-9518-c6e9cb35d1cb",
            "processingStatus": "canceled",
            "startedDateTime": null,
            "failureReason": null,
            "subject": {
                "id": "d8f1592e-5067-4ff8-a55a-a0acc8447563"
            },
            "task": {
                "category": "joiner",
                "continueOnError": false,
                "description": "Generate Temporary Access Pass and send via email to user's manager",
                "displayName": "Generate TAP and Send Email",
                "executionSequence": 2,
                "id": "92c0bdc2-ed3f-484d-971f-8032afe86cd8",
                "isEnabled": true,
                "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
                "arguments": [
                    {
                        "name": "tapLifetimeMinutes",
                        "value": "60"
                    },
                    {
                        "name": "tapIsUsableOnce",
                        "value": "true"
                    }
                ]
            }
        }
    ]
}
```
