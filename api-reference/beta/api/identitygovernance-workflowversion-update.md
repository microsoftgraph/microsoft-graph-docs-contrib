---
title: "Update workflowVersion"
description: "Update the properties of a workflowVersion object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update workflowVersion

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.

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
PATCH /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/versions/{workflowVersionId}
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
|category|String|The category of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|The date and time a workflow was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|description|String|A string that describes the purpose of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|displayName|String|A string to identify the workflow.Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines when and for who the workflow will run. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|The last time the workflow was modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|versionNumber|Int32|The version of the workflow. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [workflowVersion](../resources/identitygovernance-workflowversion.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_workflowversion"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/versions/{workflowVersionId}
Content-Type: application/json
Content-length: 307

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowVersion",
  "category": "String",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "versionNumber": "Integer"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.workflowVersion"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowVersion",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "versionNumber": "Integer"
}
```
