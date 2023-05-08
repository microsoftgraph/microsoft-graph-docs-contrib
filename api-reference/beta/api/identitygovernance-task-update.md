---
title: "Update task"
description: "Update the properties of a task object within a workflow object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update task

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [task](../resources/identitygovernance-task.md) object.

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
PATCH /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/tasks/{taskId}
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
|description|String|Describes the purpose of the task for administrative use.|
|displayName|String|A unique string that identifies the task within the workflow.|

> [!NOTE]
> All other properties can be updated by creating a new workflow version. For details, see [workflow: createNewVersion](identitygovernance-workflow-createnewversion.md).

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_update_task"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identitygovernance/lifecycleWorkflows/workflows/8696088c-1aef-4f65-afe9-acd55343e327/tasks/eb0b8bc2-7756-4429-8ce8-b9f09063cf54
Content-Type: application/json
Content-length: 454

{
    "description": "Add user to selected groups",
    "displayName": "Update marketing day 1 add users to Group set up",
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-update-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-update-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,

}
-->
``` http
HTTP/1.1 204 No Content
```
