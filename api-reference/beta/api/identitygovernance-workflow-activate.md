---
title: "workflow: activate"
description: "Run a workflow on-demand for time critical execution and testing."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# workflow: activate

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Run a [workflow](../resources/identitygovernance-workflow.md) object on-demand. You can run any workflow on-demand, including scheduled workflows. Workflows created from the "Real-time employee termination" template are run on-demand only. When you run a workflow on demand, the tasks are executed regardless of whether the user state matches the scope and trigger execution conditions.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that are required with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|subjects|[microsoft.graph.user](../resources/user.md) collection|The subjects for whom the workflow is activated.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflowthis.activate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/activate
Content-Type: application/json

{
    "subjects": [ 
        { "id": "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97"},
        { "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"}
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-workflowthisactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-workflowthisactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-workflowthisactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-workflowthisactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-workflowthisactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
