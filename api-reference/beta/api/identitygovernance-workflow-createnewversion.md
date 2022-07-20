---
title: "workflow: createNewVersion"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# workflow: createNewVersion
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
POST /identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion
POST /identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflowId}/createNewVersion
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|workflow|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [workflow](../resources/identitygovernance-workflow.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "workflowthis.createnewversion"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion
Content-Type: application/json
Content-length: 631

{
  "workflow": {
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
    "id": "String (identifier)",
    "isEnabled": "Boolean",
    "isSchedulingEnabled": "Boolean",
    "nextScheduleRunDateTime": "String (timestamp)",
    "version": "Integer"
  }
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
  "value": {
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
    "id": "String (identifier)",
    "isEnabled": "Boolean",
    "isSchedulingEnabled": "Boolean",
    "nextScheduleRunDateTime": "String (timestamp)",
    "version": "Integer"
  }
}
```

