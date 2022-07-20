---
title: "Create workflowTemplate"
description: "Create a new workflowTemplate object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create workflowTemplate
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.

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
POST /identityGovernance/lifecycleWorkflows/workflowTemplates
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.

You can specify the following properties when creating a **workflowTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleWorkflowCategory|**TODO: Add Description**. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|description|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_workflowtemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflowTemplates
Content-Type: application/json
Content-length: 277

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowTemplate",
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
  "@odata.type": "microsoft.graph.identityGovernance.workflowTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowTemplate",
  "id": "6f0690a3-e6a0-434c-468a-e67b8317f476",
  "category": "String",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  }
}
```

