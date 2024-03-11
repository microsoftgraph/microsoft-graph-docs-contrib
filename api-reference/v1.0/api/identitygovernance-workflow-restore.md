---
title: "workflow: restore"
description: "Restore a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# workflow: restore

Namespace: microsoft.graph.identityGovernance

Restore a workflow that has been deleted. You can only restore a workflow that was deleted within the last 30 days before Microsoft Entra ID automatically permanently deletes it.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_workflow_restore" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-restore-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflowthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/deletedItems/workflows/4c9c57b9-e1e9-4bed-a936-4fad9d8f5638/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-workflowthisrestore-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-workflowthisrestore-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-workflowthisrestore-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-workflowthisrestore-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-workflowthisrestore-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-workflowthisrestore-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-workflowthisrestore-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-workflowthisrestore-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#workflow",
    "@odata.type": "#microsoft.graph.identityGovernance.workflow",
    "category": "joiner",
    "description": "Configure new hire tasks for onboarding employees on their first day",
    "displayName": "Australia Onboard new hire employee",
    "lastModifiedDateTime": "2022-08-24T18:51:29.4301671Z",
    "createdDateTime": "2022-08-24T18:30:33.1050022Z",
    "deletedDateTime": null,
    "id": "4c9c57b9-e1e9-4bed-a936-4fad9d8f5638",
    "isEnabled": true,
    "isSchedulingEnabled": false,
    "nextScheduleRunDateTime": null,
    "version": 1,
    "executionConditions": null,
    "lastModifiedBy": {
        "id": "537b3620-fab7-435e-81bb-03fee751b789"
    },
    "tasks@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/deletedItems/workflows('4c9c57b9-e1e9-4bed-a936-4fad9d8f5638')('4c9c57b9-e1e9-4bed-a936-4fad9d8f5638')/tasks",
    "tasks": [],
    "createdBy": {
        "id": "537b3620-fab7-435e-81bb-03fee751b789"
    }
}
```
