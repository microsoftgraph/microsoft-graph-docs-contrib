---
title: "Create taskDefinition"
description: "Create a new taskDefinition object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Create taskDefinition

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.

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
POST /identityGovernance/lifecycleWorkflows/taskDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.

You can specify the following properties when creating a **taskDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the task definition. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|continueOnError|Boolean|A boolean value that determines if the failure of the task definition stops the subsequent workflows from running.|
|description|String|A string that describes the purpose of the task definition for administrative use.|
|displayName|String|A unique string that identifies the task definition.|
|id|String|Identifier used for individually addressing a specific task definition. Inherited from [entity](../resources/entity.md).|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|The parameter of the task definition.|
|version|Int32|An integer noting the version of the task definition.|

## Response

If successful, this method returns a `201 Created` response code and a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_taskdefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/taskDefinitions
Content-Type: application/json
Content-length: 322

{
  "@odata.type": "#microsoft.graph.identityGovernance.taskDefinition",
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.parameter"
    }
  ],
  "version": "Integer"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.taskDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.taskDefinition",
  "id": "832f9526-e95e-907e-3016-541846b845d6",
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.parameter"
    }
  ],
  "version": "Integer"
}
```
