---
title: "List tasks (in a workflowVersion)"
description: "Get a list of the task objects and their properties in a workflowVersion."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List tasks (in a workflowVersion)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [task](../resources/identitygovernance-task.md) objects in a [workflowVersion](../resources/identitygovernance-workflowversion.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Global administrator
- Global reader
- Lifecycle workflows administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/versions/{version number}/tasks
```

## Optional query parameters

This method supports the `$top`, `$count`, `$search`, `$orderBy`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_workflowversion_task",
  "sampleKeys": ["156ce798-1eb6-4e0a-8515-e79f54d04390", "2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/156ce798-1eb6-4e0a-8515-e79f54d04390/versions/2/tasks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-workflowversion-task-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-workflowversion-task-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-workflowversion-task-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.workflowVersion)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('156ce798-1eb6-4e0a-8515-e79f54d04390')/versions(2)/tasks",
    "@odata.count": 2,
    "value": [
        {
            "category": "joiner,leaver",
            "continueOnError": false,
            "description": "Enable user account in the directory",
            "displayName": "Enable User Account",
            "executionSequence": 1,
            "id": "4d9d41d7-a8e1-4f2f-8c8c-a883bc02e6ee",
            "isEnabled": true,
            "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
            "arguments": []
        },
        {
            "category": "joiner",
            "continueOnError": false,
            "description": "Send welcome email to new hire",
            "displayName": "Send Welcome Email",
            "executionSequence": 2,
            "id": "a51a6a57-2ef7-4006-b0ca-285b19d5e1c8",
            "isEnabled": true,
            "taskDefinitionId": "70b29d51-b59a-4773-9280-8841dfd3f2ea",
            "arguments": []
        }
    ]
}
```
