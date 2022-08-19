---
title: "Create workflowVersion"
description: "Create a new workflowVersion object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create workflowVersion

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workflowVersion](../resources/identitygovernance-workflowversion.md) object.

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
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/createNewVersion
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [workflowVersion](../resources/identitygovernance-workflowversion.md) object.

You can specify the following properties when creating a **workflowVersion**.

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The time and date the workflow was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|description|String|A string that describes the purpose of the workflow for administrative use. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|A unique string that identifies the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines for who and when a workflow will run. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|lastModifiedDateTime|DateTimeOffset|The time and date a workflow was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|versionNumber|Int32|The version of the workflow.|

## Response

If successful, this method returns a `201 Created` response code and a [workflowVersion](../resources/identitygovernance-workflowversion.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_workflowversion_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion
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
HTTP/1.1 201 Created
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
