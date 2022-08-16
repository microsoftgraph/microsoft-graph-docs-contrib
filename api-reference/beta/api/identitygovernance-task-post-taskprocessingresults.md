---
title: "Create taskProcessingResult"
description: "Create a new taskProcessingResult object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create taskProcessingResult

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new taskProcessingResult object.

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
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/task/taskProcessingResults
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.

You can specify the following properties when creating a **taskProcessingResult**.

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset| The date time when `taskProcessingResult` execution ended. Optional.|
|createdDateTime|DateTimeOffset|The date time when the `taskProcessingResult` was created. Required.|
|failureReason|String|Describes why the `taskProcessingResult` has failed. Optional.|
|processingStatus|String|Describes the execution status of the `taskProcessingResult`. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|startedDateTime|DateTimeOffset|The date time when `taskProcessingResult` execution started. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_taskprocessingresult_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/task/taskProcessingResults
Content-Type: application/json
Content-length: 234

{
  "@odata.type": "#microsoft.graph.identityGovernance.taskProcessingResult",
  "completedDateTime": "String (timestamp)",
  "failureReason": "String",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.taskProcessingResult"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.taskProcessingResult",
  "id": "9d903f8d-4f30-482f-9927-15f6dc48891d",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "failureReason": "String",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)"
}
```
