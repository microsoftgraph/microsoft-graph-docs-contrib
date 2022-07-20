---
title: "Delete taskProcessingResult"
description: "Deletes a taskProcessingResult object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Delete taskProcessingResult
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.

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
DELETE /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/$ref
DELETE /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/task/taskProcessingResults/{taskProcessingResultId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_taskprocessingresult"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}
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
HTTP/1.1 204 No Content
```

