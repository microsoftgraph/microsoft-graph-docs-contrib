---
title: "Get userProcessingResult"
description: "Read the properties and relationships of a userProcessingResult object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get userProcessingResult

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.

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
GET /workflowBase/userProcessingResults/{userProcessingResultId}
```

## Optional query parameters

This method supports the `$select`, `$top`, `$count`, `$orderby`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_userprocessingresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/workflowBase/userProcessingResults/{userProcessingResultId}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.userProcessingResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.identityGovernance.userProcessingResult",
    "id": "f26ecb7c-9fc8-1e23-937b-6d581f6cce8e",
    "completedDateTime": "String (timestamp)",
    "failedTasksCount": "Integer",
    "processingStatus": "String",
    "scheduledDateTime": "String (timestamp)",
    "startedDateTime": "String (timestamp)",
    "totalTasksCount": "Integer",
    "totalUnprocessedTasksCount": "Integer",
    "workflowExecutionType": "String",
    "workflowVersion": "Integer"
  }
}
```
