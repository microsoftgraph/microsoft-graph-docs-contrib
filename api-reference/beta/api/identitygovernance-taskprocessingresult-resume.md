---
title: "taskProcessingResult: resume"
description: "Task processing result resume description"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# taskProcessingResult: resume

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resumes the tas processing result.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Resume.All, LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/resume
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/task/taskProcessingResults/{taskProcessingResultId}/resume
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|source|String|**TODO: Add Description**|
|type|String|**TODO: Add Description**|
|data|[microsoft.graph.identityGovernance.customTaskExtensionCallbackData](../resources/identitygovernance-customtaskextensioncallbackdata.md)|**TODO: Add Description**|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "taskprocessingresultthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/runs/{runId}/userProcessingResults/{userProcessingResultId}/taskProcessingResults/{taskProcessingResultId}/resume
Content-Type: application/json
Content-length: 155

{
  "source": "String",
  "type": "String",
  "data": {
    "@odata.type": "microsoft.graph.identityGovernance.customTaskExtensionCallbackData"
  }
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
HTTP/1.1 204 No Content
```
