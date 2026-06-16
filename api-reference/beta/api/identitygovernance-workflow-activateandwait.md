---
title: "workflow: activateAndWait"
description: "Activate a lifecycle workflow for a specified subject and synchronously wait for execution to complete."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# workflow: activateAndWait

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a [lifecycle workflow](../resources/identitygovernance-workflow.md) for a specified subject and synchronously wait for execution to complete. This action returns an [awaitedWorkflowProcessingResult](../resources/identitygovernance-awaitedworkflowprocessingresult.md) with the execution outcome. Use this action when you need immediate confirmation of workflow completion, for example when provisioning a non-user subject.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-workflow-activateandwait-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-workflow-activateandwait-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/activateAndWait
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|subject|[microsoft.graph.identityGovernance.workflowSubject](../resources/identitygovernance-workflowsubject.md)|The subject for which to activate the workflow. Must include the `@odata.type` property to specify the derived type (for example, `#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject`). Required.|

## Response

If successful, this action returns a `200 OK` response code and an [awaitedWorkflowProcessingResult](../resources/identitygovernance-awaitedworkflowprocessingresult.md) in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workflow_activateandwait"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879a93-6b91-4153-b7e6-5df4a7b7c5c8/activateAndWait
Content-Type: application/json

{
  "subject": {
    "@odata.type": "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
    "id": "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe",
    "attributeSetEntries": [
      {
        "name": "department",
        "value": "Engineering"
      },
      {
        "name": "jobTitle",
        "value": "Software Engineer"
      }
    ]
  }
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.awaitedWorkflowProcessingResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.identityGovernance.awaitedWorkflowProcessingResult",
  "processingStatus": "completed",
  "statusReasons": [],
  "subject": {
    "@odata.type": "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
    "id": "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe",
    "attributeSetEntries": [
      {
        "name": "department",
        "value": "Engineering"
      },
      {
        "name": "jobTitle",
        "value": "Software Engineer"
      }
    ]
  }
}
```
