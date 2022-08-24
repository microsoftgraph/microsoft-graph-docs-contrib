---
title: "List runs"
description: "Get the run resources from the runs navigation property."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List runs

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the run resources from the runs navigation property.

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
GET /workflow/runs
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

If successful, this method returns a `200 OK` response code and a collection of [run](../resources/identitygovernance-run.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_run"
}
-->
``` http
GET https://graph.microsoft.com/beta/workflow/runs
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.run)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.run",
      "id": "9947396f-3691-e265-b1e5-2ea86c0c89d6",
      "completedDateTime": "String (timestamp)",
      "failedTasksCount": "Integer",
      "failedUsersCount": "Integer",
      "lastUpdatedDateTime": "String (timestamp)",
      "processingStatus": "String",
      "startedDateTime": "String (timestamp)",
      "scheduledDateTime": "String (timestamp)",
      "successfulUsersCount": "Integer",
      "totalUsersCount": "Integer",
      "totalUnprocessedTasksCount": "Integer",
      "workflowExecutionType": "String"
    }
  ]
}
```
