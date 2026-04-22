---
title: "workflow: cancelProcessing"
description: "Cancel workflow runs that are currently in progress or queued."
author: "KristinaSmith"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 03/26/2026
---

# workflow: cancelProcessing

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel one or more [workflow](../resources/identitygovernance-workflow.md) runs that are currently in `queued` or `inProgress` status. Currently limited to canceling one run per request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_workflow_cancelprocessing" } -->

[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-cancelprocessing-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflow-id}/cancelProcessing
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that are required with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|scope|[microsoft.graph.identityGovernance.cancelScope](../resources/identitygovernance-cancelscope.md)|Defines the scope of workflow runs to cancel. Currently only [cancelRunsScope](../resources/identitygovernance-cancelrunsscope.md) is supported. Required.|

### cancelRunsScope properties

When using [cancelRunsScope](../resources/identitygovernance-cancelrunsscope.md), the `@odata.type` property is required in the request body.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Must be `#microsoft.graph.identityGovernance.cancelRunsScope`. Required.|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|The workflow runs to cancel. Currently limited to one run per request. Required.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Successfully cancel a workflow run

The following example shows a request that successfully cancels a single workflow run.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflow_cancelprocessing_success"
}
-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/cancelProcessing
Content-Type: application/json

{
  "scope": {
    "@odata.type": "#microsoft.graph.identityGovernance.cancelRunsScope",
    "runs": [
      {
        "id": "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97"
      }
    ]
  }
}
```

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
