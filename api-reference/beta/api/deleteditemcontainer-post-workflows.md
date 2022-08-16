---
title: "Create workflow"
description: "Create a new workflow object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create workflow

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new workflow object.

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
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [workflow](../resources/identitygovernance-workflow.md) object.

You can specify the following properties when creating a **workflow**.

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the HR function supported by the workflows created using this template. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|The date time when the `workflow` was versioned. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|description|String|The description of the `workflow` or `workflowVersion`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|displayName|String|The display name of the `workflow` or `workflowVersion`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)| Conditions describing when to execute the workflow and the criteria to identify in-scope subject set. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|The date time when the `workflow` was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|deletedDateTime|DateTimeOffset|Null when the object is active, but the time is stamped when the object is deleted. Optional.|
|isEnabled|Boolean|Whether the `task` is enabled in the workflow. If disabled, this means that the task does not get executed. Required.|
|isSchedulingEnabled|Boolean|If true, the workflow engine executes the `workflow` on the schedule defined by tenant settings. Required.|
|nextScheduleRunDateTime|DateTimeOffset|The date time when the `workflow` is expected to run next based on the schedule interval Optional.|
|version|Int32|The current version number of the `workflow`. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [workflow](../resources/identitygovernance-workflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_workflow_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows
Content-Type: application/json
Content-length: 454

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflow",
  "category": "String",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "deletedDateTime": "String (timestamp)",
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "nextScheduleRunDateTime": "String (timestamp)",
  "version": "Integer"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflow"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflow",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "id": "9469a17e-3460-4f83-56bb-f67410655e7b",
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "nextScheduleRunDateTime": "String (timestamp)",
  "version": "Integer"
}
```
