---
title: "Update userProcessingResult"
description: "Update the properties of a userProcessingResult object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update userProcessingResult

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.

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
PATCH /workflowBase/userProcessingResults/{userProcessingResultId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the workflow execution for a user completed. Optional.|
|failedTasksCount|Int32|The number of tasks that failed in the workflow execution. Required.|
|processingStatus|lifecycleWorkflowProcessingStatus|The workflow execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|scheduledDateTime|DateTimeOffset|The date time that the workflow is scheduled to be executed for a user. Required.|
|startedDateTime|DateTimeOffset|The date time that the workflow execution started. Optional.|
|totalTasksCount|Int32|The total number of tasks that in the workflow execution. Required.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks for the workflow. Required.|
|workflowExecutionType|workflowExecutionType|Describes the execution type of the workflow. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|
|workflowVersion|Int32|The version of the workflow that was executed. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_userprocessingresult"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/workflowBase/userProcessingResults/{userProcessingResultId}
Content-Type: application/json
Content-length: 432

{
  "@odata.type": "#microsoft.graph.identityGovernance.userProcessingResult",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "processingStatus": "String",
  "scheduledDateTime": "String (timestamp)",
  "startedDateTime": "String (timestamp)",
  "totalTasksCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String",
  "workflowVersion": "Integer"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.usersProcessingSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.userProcessingResult",
  "id": "f26ecb7c-9fc8-1e23-937b-6d581f6cce8e",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "processingStatus": "String",
  "scheduledDateTime": "String (timestamp)",
  "startedDateTime": "String (timestamp)",
  "totalTasksCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String",
  "workflowVersion": "Integer"
}
```
