---
title: "Update taskProcessingResult"
description: "Update the properties of a taskProcessingResult object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update taskProcessingResult
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}
PATCH /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/task/taskProcessingResults/{taskProcessingResultId}
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
|completedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|failureReason|String|**TODO: Add Description** Optional.|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_taskprocessingresult"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

