---
title: "Create run"
description: "Create a new run object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create run

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [run](../resources/identitygovernance-run.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /workflowBase/runs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [run](../resources/identitygovernance-run.md) object.

You can specify the following properties when creating a **run**.

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the run completed. Optional.|
|failedTasksCount|Int32|The number of tasks that failed in the run execution. Required.|
|failedUsersCount|Int32|The number of users that failed in the run execution. Required.|
|lastUpdatedDateTime|DateTimeOffset|The datetime that the run was last updated. Optional.|
|processingStatus|String|The run execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|startedDateTime|DateTimeOffset|The date time that the run execution started. Optional.|
|scheduledDateTime|DateTimeOffset|The date time that the run is scheduled to be executed for a workflow. Required.|
|successfulUsersCount|Int32|The number of successfully completed users in the run. Required.|
|totalUsersCount|Int32|The total number of users in the workflow execution. Required.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks in the run execution. Required.|
|workflowExecutionType|String|The execution type of the workflows associated with the run. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [run](../resources/identitygovernance-run.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_run_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/workflowBase/runs
Content-Type: application/json
Content-length: 502

{
  "@odata.type": "#microsoft.graph.identityGovernance.run",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "failedUsersCount": "Integer",
  "lastUpdatedDateTime": "String (timestamp)",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)",
  "scheduledDateTime": "String (timestamp)",
  "successfulUsersCount": "Integer",
  "totalUsersCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String"
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.run",
  "id": "9947396f-3691-e265-b1e5-2ea86c0c89d6",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "failedUsersCount": "Integer",
  "lastUpdatedDateTime": "String (timestamp)",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)",
  "scheduledDateTime": "String (timestamp)",
  "successfulUsersCount": "Integer",
  "totalUsersCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String"
}
```
