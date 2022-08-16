---
title: "Create userProcessingResult"
description: "Create a new userProcessingResult object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create userProcessingResult

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new userProcessingResult object.

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
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/userProcessingResults
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.

You can specify the following properties when creating a **userProcessingResult**.

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the workflow execution for a user completed. Optional.|
|failedTasksCount|Int32|The number of tasks that failed in the workflow execution. Required.|
|processingStatus|String|The workflow execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|scheduledDateTime|DateTimeOffset|The date time that the workflow is scheduled to be executed for a user. Required.|
|startedDateTime|DateTimeOffset|The date time that the workflow execution started. Optional.|
|totalTasksCount|Int32|The total number of tasks that in the workflow execution. Required.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks for the workflow. Required.|
|workflowExecutionType|String|Describes the execution type of the workflow. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|
|workflowVersion|Int32|The version of the workflow that was executed. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_userprocessingresult_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/userProcessingResults
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
  "@odata.type": "microsoft.graph.identityGovernance.userProcessingResult"
}
-->
``` http
HTTP/1.1 201 Created
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
