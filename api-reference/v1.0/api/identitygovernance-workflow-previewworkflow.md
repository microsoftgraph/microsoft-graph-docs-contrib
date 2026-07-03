---
title: "workflow: previewWorkflow"
description: "Run a workflow in preview mode for selected directory objects without affecting production users."
author: "kavyamallikarjuna1"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 06/10/2026
---

# workflow: previewWorkflow

Namespace: microsoft.graph.identityGovernance

Run a [workflow](../resources/identitygovernance-workflow.md) in preview mode for selected directory objects without affecting production users. This action triggers workflow processing in preview mode, and results can be retrieved by using the [List userProcessingResults](../api/identitygovernance-workflow-list-userprocessingresults.md) operation with `$filter=workflowExecutionType eq 'previewMode'`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_workflow_previewworkflow" } -->

[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-previewworkflow-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflow-id}/previewWorkflow
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
|subjects|[directoryObject](../resources/directoryobject.md) collection|A collection of directory objects (typically users) to include in the preview run. Maximum of 10 subjects per request. Required.|

## Response

If successful, this action returns a `204 No Content` response code.

To retrieve the results of the preview run, use the [List userProcessingResults](../api/identitygovernance-workflow-list-userprocessingresults.md) operation with `$filter=workflowExecutionType eq 'preview'`. Results may not be immediately available; timing depends on workflow complexity. Results may include users from previous preview runs for the same workflow.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_workflow_previewworkflow_v1"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/previewWorkflow
Content-Type: application/json

{
  "subjects": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "b59552b8-fa7b-4f68-8496-0a529aace8c0"
    },
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
    }
  ]
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
