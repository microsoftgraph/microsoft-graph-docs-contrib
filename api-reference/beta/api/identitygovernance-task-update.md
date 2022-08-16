---
title: "Update task"
description: "Update the properties of a task object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update task

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [task](../resources/identitygovernance-task.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /workflowBase/tasks/{taskId}
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
|arguments|[microsoft.graph.keyValuePair](../resources/intune-mam-keyvaluepair.md) collection|Contains the user specified arguments necessary to execute the task. Required.|
|category|lifecycleTaskCategory|The category of the HR function that can use this task. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|continueOnError|Boolean|Determines if task can block workflow execution on error. Required.|
|description|String|The description of the `task`. Optional.|
|displayName|String|The display name of the `task`. Required.|
|executionSequence|Int32|Determines the ordering of the tasks within the workflow. Required.|
|isEnabled|Boolean|Whether the `task` is enabled in the workflow. Required.|
|taskDefinitionId|String|The unique identifier for the `taskDefinition`. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [task](../resources/identitygovernance-task.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_task"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/workflowBase/tasks/{taskId}
Content-Type: application/json
Content-length: 365

{
  "@odata.type": "#microsoft.graph.identityGovernance.task",
  "arguments": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "executionSequence": "Integer",
  "isEnabled": "Boolean",
  "taskDefinitionId": "String"
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
  "@odata.type": "#microsoft.graph.identityGovernance.task",
  "id": "b39b46f2-4400-96b6-aa94-04a47fe063e8",
  "arguments": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "executionSequence": "Integer",
  "isEnabled": "Boolean",
  "taskDefinitionId": "String"
}
```
