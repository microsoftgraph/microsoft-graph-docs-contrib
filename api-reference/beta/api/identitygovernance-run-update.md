---
title: "Update run"
description: "Update the properties of a run object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update run
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [run](../resources/identitygovernance-run.md) object.

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
PATCH /workflowBase/runs/{runId}
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
|failedUsersCount|Int32|**TODO: Add Description** Required.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. Required.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|scheduledDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|successfulUsersCount|Int32|**TODO: Add Description** Required.|
|totalUsersCount|Int32|**TODO: Add Description** Required.|
|totalUnprocessedTasksCount|Int32|**TODO: Add Description** Required.|
|workflowExecutionType|workflowExecutionType|**TODO: Add Description**. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [run](../resources/identitygovernance-run.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_run"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/workflowBase/runs/{runId}
Content-Type: application/json
Content-length: 502

{
  "@odata.type": "#microsoft.graph.identityGovernance.run",
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
```

