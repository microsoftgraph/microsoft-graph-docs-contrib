---
title: "taskProcessingResult: resume"
description: "An Azure Logic Apps system-assigned managed identity calls this API to resume the task processing result that's in progress."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# taskProcessingResult: resume

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resume a task processing result that's `inProgress`. An Azure Logic Apps system-assigned managed identity calls this API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not Supported.|

> [!IMPORTANT]
> Only the Azure Logic Apps system-assigned managed identity that's specified in the [custom task extension authentication Configuration](../resources/identitygovernance-customtaskextension.md) can call this API. The authorized resource doesn't require any Microsoft Graph permissions.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/tasks/{taskId}/taskProcessingResults/{taskProcessingResultsId}/resume
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a [custom extension callout response](../resources/customextensioncalloutresponse.md).

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|source|String|The source of the `taskProcessingResult`.|
|type|String|The type of the `taskProcessingResult`.|
|data|[microsoft.graph.identityGovernance.customTaskExtensionCallbackData](../resources/identitygovernance-customtaskextensioncallbackdata.md)|The customtaskextensionCallbackData of the taskProcessingResult. The logic app returns an operation status of whether or not it successfully ran. The taskprocessingresult resumes based on how the task was designed in the workflow.  |

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_taskprocessingresultthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/4f36da05-5df8-457d-adb3-b132e7b59571/tasks/e07dcdb2-0a77-4ee3-8645-3801fbe1cf9f/taskProcessingResults/6e1ec336-8d06-4386-a377-79dbab1a2eb6/resume
Content-Type: application/json
Content-length: 155

{
  "data": {
    "operationStatus": "Completed"
  },
  "source": "sample",
  "type": "lifecycleEvent"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-taskprocessingresultthisresume-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-taskprocessingresultthisresume-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-taskprocessingresultthisresume-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
