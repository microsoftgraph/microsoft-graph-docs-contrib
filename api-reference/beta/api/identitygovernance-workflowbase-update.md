---
title: "Update workflowBase"
description: "Update the properties of a workflowBase object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update workflowBase

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workflowBase](../resources/identitygovernance-workflowbase.md) object.

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
PATCH /workflowBase
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
|category|lifecycleWorkflowCategory|The category of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The time and date the workflow was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|description|String|A string that describes the purpose of the workflow for administrative use. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|A unique string that identifies the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines for who and when a workflow will run. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time and date a workflow was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|versionNumber|Int32|The version of the workflow.|

## Response

If successful, this method returns a `200 OK` response code and an updated [workflowBase](../resources/identitygovernance-workflowbase.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_workflowbase"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/workflowBase
Content-Type: application/json
Content-length: 273

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowBase",
  "category": "String",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  }
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowBase",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
