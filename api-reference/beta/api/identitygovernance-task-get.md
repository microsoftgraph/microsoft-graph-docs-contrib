---
title: "Get task"
description: "Read the properties of a task object in a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get task

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a task specific from a [workflow](../resources/identitygovernance-workflow.md) or [workflowVersion](../resources/identitygovernance-workflowversion.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

Fetch tasks for a lifecycle workflow.
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflow/{workflowId}/tasks/{taskId}
```

Fetch tasks for a lifecycle workflow version.

<!-- {
  "blockType": "ignored",
  "sampleKeys": ["156ce798-1eb6-4e0a-8515-e79f54d04390", "2", "4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee"]
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/versions/2/tasks/4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) object in the response body.

## Examples

### Example 1: Get a task from a workflow

#### Request

The following is an example of a request to get a task from a workflow.
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflow_task"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflow/156ce798-1eb6-4e0a-8515-e79f54d04390/tasks/fafa2189-cd62-4643-a825-06cab8817086
```

#### Response

The following is an example of the response of a request to get a task from a workflow.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.task"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/tasks/$entity",
    "category": "joiner,leaver",
    "continueOnError": false,
    "description": "Enable user account in the directory",
    "displayName": "Enable User Account",
    "executionSequence": 1,
    "id": "fafa2189-cd62-4643-a825-06cab8817086",
    "isEnabled": true,
    "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
    "arguments": []
}
```

### Example 2: Get a task from a workflow version

#### Request

The following is an example of a request to get a task from a workflow version.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_workflowVersion_task",
  "sampleKeys": ["156ce798-1eb6-4e0a-8515-e79f54d04390", "2", "4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee"]
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/versions/2/tasks/4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-workflowversion-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-workflowversion-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response of a request to get a task from a workflow version.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.task"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879e66-9ea9-48d0-804d-8fea672d0341')/versions(1)/tasks/$entity",
  "category": "joiner,leaver",
  "continueOnError": false,
  "description": "Add user to selected groups",
  "displayName": "Add User To Groups",
  "executionSequence": 2,
  "id": "eedd8043-90a1-4e3c-9112-b2a8917ea3ae",
  "isEnabled": true,
  "taskDefinitionId": "22085229-5809-45e8-97fd-270d28d66910",
  "arguments": [
    {
      "name": "groupID",
      "value": "e5659cb0-bcbb-4a9f-9092-90f72bd19028"
    }
  ]
}
```
