---
title: "List taskProcessingResults"
description: "Get the taskProcessingResult resources from the taskProcessingResults navigation property."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskProcessingResults

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the taskProcessingResult resources from the taskProcessingResults navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/taskReports/{taskReportId}/taskProcessingResults
```

## Optional query parameters

This method supports the `$select`, `$top`, `$orderby`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_taskprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/taskReports/{taskReportId}/taskProcessingResults
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskProcessingResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.taskProcessingResult",
      "id": "9d903f8d-4f30-482f-9927-15f6dc48891d",
      "completedDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "failureReason": "String",
      "processingStatus": "String",
      "startedDateTime": "String (timestamp)"
    }
  ]
}
```
