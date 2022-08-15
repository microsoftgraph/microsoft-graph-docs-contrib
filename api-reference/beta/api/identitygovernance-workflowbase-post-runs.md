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

Create a new run object.

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
|completedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|failedTasksCount|Int32|**TODO: Add Description** Required.|
|failedUsersCount|Int32|**TODO: Add Description** Required.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|scheduledDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|successfulUsersCount|Int32|**TODO: Add Description** Required.|
|totalUsersCount|Int32|**TODO: Add Description** Required.|
|totalUnprocessedTasksCount|Int32|**TODO: Add Description** Required.|
|workflowExecutionType|workflowExecutionType|**TODO: Add Description**. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|

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
