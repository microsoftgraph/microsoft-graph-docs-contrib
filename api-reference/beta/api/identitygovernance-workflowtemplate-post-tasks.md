---
title: "Create task"
description: "Create a new task object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create task

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new task object.

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
POST /identityGovernance/lifecycleWorkflows/workflowTemplates/{workflowTemplateId}/tasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [task](../resources/identitygovernance-task.md) object.

You can specify the following properties when creating a **task**.

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

If successful, this method returns a `201 Created` response code and a [task](../resources/identitygovernance-task.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_task_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflowTemplates/{workflowTemplateId}/tasks
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
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.task"
}
-->
``` http
HTTP/1.1 201 Created
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
