---
title: "Update workflowVersion"
description: "Update the properties of a workflowVersion object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
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
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

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
|category|lifecycleWorkflowCategory|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|versionNumber|Int32|**TODO: Add Description** Required.|



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
  "truncated": true
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

