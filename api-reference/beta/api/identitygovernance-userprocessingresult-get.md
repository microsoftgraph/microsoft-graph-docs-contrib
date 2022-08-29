---
title: "Get userProcessingResult (for a run of a lifecycle workflow)"
description: "Read the properties of a userProcessingResult for a run of a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get userProcessingResult (for a run of a lifecycle workflow)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the user processing result of a [run](../resources/identitygovernance-run.md) object.

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
GET /identityGovernance/lifecycleWorkflows/workflows/{{workflow_id}}/runs/{runId}/userProcessingResults/{userProcessingResultId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_run_userprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/dad77a47-6eda-4de7-bc37-fe8eb5aaf17d/userProcessingResults/78b83505-6967-4168-a7ea-4921c0543ce9
```

### Response

The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879e66-9ea9-48d0-804d-8fea672d0341')/runs('dad77a47-6eda-4de7-bc37-fe8eb5aaf17d')/userProcessingResults/$entity",
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
}
```
