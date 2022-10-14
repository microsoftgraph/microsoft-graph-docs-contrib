---
title: "List taskProcessingResults (for a userProcessingResult in a run)"
description: "Get the taskProcessingResult resources for a userProcessingResult from a run."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskProcessingResults (for a userProcessingResult in a run)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the taskProcessingResult resources for a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) from a [run](../resources/identitygovernance-run.md).

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
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults
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

### Example 1: Get the task processing results for a user processing result in a run report for a workflow

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/IdentityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/72885f91-2cf0-44b1-b3ed-bd145af0192c/userProcessingResults/78b83505-6967-4168-a7ea-4921c0543ce9/taskProcessingResults
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-run-taskprocessingresult-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-run-taskprocessingresult-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-run-taskprocessingresult-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-run-taskprocessingresult-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-run-taskprocessingresult-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-run-taskprocessingresult-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879e66-9ea9-48d0-804d-8fea672d0341')/runs('dad77a47-6eda-4de7-bc37-fe8eb5aaf17d')/userProcessingResults('78b83505-6967-4168-a7ea-4921c0543ce9')/taskProcessingResults",
    "value": [
        {
            "completedDateTime": "2022-08-24T23:28:05.3529197Z",
            "createdDateTime": "2022-08-24T23:28:04.5490995Z",
            "id": "05a96d7a-0e00-459c-b6c8-1870099e8275",
            "processingStatus": "completed",
            "startedDateTime": "2022-08-24T23:28:05.1234966Z",
            "failureReason": null,
            "subject": {
                "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
            },
            "task": {
                "category": "joiner,leaver",
                "continueOnError": false,
                "description": "Enable user account in the directory",
                "displayName": "Enable User Account",
                "executionSequence": 1,
                "id": "917e9eab-415d-4e45-b39d-87eb5e30de38",
                "isEnabled": false,
                "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
                "arguments": []
            }
        },
        {
            "completedDateTime": "2022-08-24T23:28:06.760333Z",
            "createdDateTime": "2022-08-24T23:28:04.5571759Z",
            "id": "e30b12e1-45fa-4463-8d54-48f43fd8942a",
            "processingStatus": "completed",
            "startedDateTime": "2022-08-24T23:28:06.3926865Z",
            "failureReason": null,
            "subject": {
                "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
            },
            "task": {
                "category": "joiner,leaver",
                "continueOnError": false,
                "description": "Add user to selected groups",
                "displayName": "Add User To Groups",
                "executionSequence": 2,
                "id": "eedd8043-90a1-4e3c-9112-b2a8917ea3ae",
                "isEnabled": true,
                "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
                "arguments": [
                    {
                        "name": "groupID",
                        "value": "e5659cb0-bcbb-4a9f-9092-90f72bd19028"
                    }
                ]
            }
        }
    ]
}
```

### Example 2: Get the specific properties of task processing results for a user processing result in a run report for a workflow

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_taskprocessingresult_select"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/runs/e65e08a0-d68d-41dc-915b-8c4019af5cc2/userProcessingResults/40efc576-840f-47d0-ab95-5abca800f8a2//taskProcessingResults?$select=id,failureReason,processingStatus,subject,task
```

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('15239232-66ed-445b-8292-2f5bbb2eb833')/runs('e65e08a0-d68d-41dc-915b-8c4019af5cc2')/userProcessingResults('40efc576-840f-47d0-ab95-5abca800f8a2')/taskProcessingResults(id,failureReason,processingStatus,subject,task)",
    "value": [
        {
            "id": "78650318-7238-4e7e-852f-2c36cbeff340",
            "processingStatus": "completed",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove all licenses assigned to the user",
                "displayName": "Remove all licenses for user",
                "executionSequence": 1,
                "id": "f71246b2-269c-4ba6-ab8e-afc1a05114cb",
                "isEnabled": true,
                "taskDefinitionId": "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e",
                "arguments": []
            }
        },
        {
            "id": "3d2e459d-5614-42e4-952b-0e917b5f6646",
            "processingStatus": "completed",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Remove user from all Teams memberships",
                "displayName": "Remove user from all Teams",
                "executionSequence": 2,
                "id": "ed545f03-e8d8-45fb-9cbd-15c937f2a866",
                "isEnabled": true,
                "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",
                "arguments": []
            }
        },
        {
            "id": "03359fa6-c63c-4573-92c2-4c9518ca98aa",
            "processingStatus": "completed",
            "failureReason": null,
            "subject": {
                "id": "df744d9e-2148-4922-88a8-633896c1e929"
            },
            "task": {
                "category": "leaver",
                "continueOnError": false,
                "description": "Delete user account in Azure AD",
                "displayName": "Delete User Account",
                "executionSequence": 3,
                "id": "b4cefaa0-6ceb-461d-bbf5-ec69246463fd",
                "isEnabled": true,
                "taskDefinitionId": "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff",
                "arguments": []
            }
        }
    ]
}
```