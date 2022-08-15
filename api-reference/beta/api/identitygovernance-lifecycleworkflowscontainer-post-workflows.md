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
POST /identityGovernance/lifecycleWorkflows/workflows
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
|category|lifecycleWorkflowCategory|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isEnabled|Boolean|**TODO: Add Description** Required.|
|isSchedulingEnabled|Boolean|**TODO: Add Description** Required.|
|nextScheduleRunDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|version|Int32|**TODO: Add Description** Optional.|

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
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows
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
