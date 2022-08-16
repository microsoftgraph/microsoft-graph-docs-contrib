---
title: "Update workflow"
description: "Update the properties of a workflow object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update workflow

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.

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
PATCH /identityGovernance/lifecycleWorkflows/workflows/{workflowId}
PATCH /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}
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
|category|String|The category of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The time and date the workflow was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|deletedDateTime|DateTimeOffset|The time and date a workflow is deleted.|
|description|String|A string that describes the purpose of the workflow for administrative use. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|A unique string that identifies the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines for who and when a workflow will run.  Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|id|String|Identifier used for individually addressing a specific workflow.|
|isEnabled|Boolean|A boolean value that denotes whether the workflow is set to run or not.|
|isSchedulingEnabled|Boolean|A Boolean value that denotes whether scheduling is enabled or not. |
|lastModifiedDateTime|DateTimeOffset|The time and date a workflow was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|nextScheduleRunDateTime|DateTimeOffset|The next scheduled run date and time for a workflow. |
|version|Int32|The version of the workflow.|

## Response

If successful, this method returns a `200 OK` response code and an updated [workflow](../resources/identitygovernance-workflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_workflow"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}
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
HTTP/1.1 200 OK
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
