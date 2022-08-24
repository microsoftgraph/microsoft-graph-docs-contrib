---
title: "List taskReports"
description: "Get a list of the taskReport objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskReports

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [taskReport](../resources/identitygovernance-taskreport.md) objects and their properties.

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
GET /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/taskReports
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

If successful, this method returns a `200 OK` response code and a collection of [taskReport](../resources/identitygovernance-taskreport.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_taskreport"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/taskReports
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskReport)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.taskReport",
      "id": "b48de895-9e13-28a3-663c-70068a6262a9",
      "runId": "String",
      "processingStatus": "String",
      "successfulUsersCount": "Integer",
      "failedUsersCount": "Integer",
      "unprocessedUsersCount": "Integer",
      "totalUsersCount": "Integer",
      "startedDateTime": "String (timestamp)",
      "completedDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)"
    }
  ]
}
```
