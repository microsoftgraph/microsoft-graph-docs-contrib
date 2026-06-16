---
title: "List subjectProcessingResults"
description: "Get a list of subjectProcessingResult objects for a specific workflow run."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List subjectProcessingResults

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) objects for a specific workflow [run](../resources/identitygovernance-run.md). Each result represents the processing outcome for a single subject.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitygovernance-run-list-subjectprocessingresults-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-run-list-subjectprocessingresults-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/runs/{runId}/subjectProcessingResults
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_run_subjectprocessingresults"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/14879a93-6b91-4153-b7e6-5df4a7b7c5c8/runs/e831ffea-4156-482a-b431-e26f94d0a3dc/subjectProcessingResults
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.subjectProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflows('14879a93-6b91-4153-b7e6-5df4a7b7c5c8')/runs('e831ffea-4156-482a-b431-e26f94d0a3dc')/subjectProcessingResults",
  "value": [
    {
      "id": "6c6d9550-4adc-117f-b307-ee188d511d67",
      "completedDateTime": "2026-05-15T10:35:00Z",
      "failedTasksCount": 0,
      "processingStatus": "completed",
      "scheduledDateTime": "2026-05-15T10:30:00Z",
      "startedDateTime": "2026-05-15T10:30:15Z",
      "totalTasksCount": 3,
      "totalUnprocessedTasksCount": 0,
      "workflowExecutionType": "extensibilityOnDemand",
      "workflowVersion": 1,
      "subject": {
        "@odata.type": "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
        "id": "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe",
        "attributeSetEntries": []
      }
    }
  ]
}
```
