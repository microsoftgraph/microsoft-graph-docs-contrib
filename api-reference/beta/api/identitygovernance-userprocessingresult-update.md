---
title: "Update userProcessingResult"
description: "Update the properties of a userProcessingResult object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update userProcessingResult
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /workflowBase/userProcessingResults/{userProcessingResultId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|failedTasksCount|Int32|**TODO: Add Description** Required.|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|scheduledDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|totalTasksCount|Int32|**TODO: Add Description** Required.|
|totalUnprocessedTasksCount|Int32|**TODO: Add Description** Required.|
|workflowExecutionType|workflowExecutionType|**TODO: Add Description**. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|
|workflowVersion|Int32|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_userprocessingresult"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/workflowBase/userProcessingResults/{userProcessingResultId}
Content-Type: application/json
Content-length: 432

{
  "@odata.type": "#microsoft.graph.identityGovernance.userProcessingResult",
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
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

