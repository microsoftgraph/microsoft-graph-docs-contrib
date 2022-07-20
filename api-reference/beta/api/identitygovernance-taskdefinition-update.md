---
title: "Update taskDefinition"
description: "Update the properties of a taskDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update taskDefinition
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.

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
PATCH /identityGovernance/lifecycleWorkflows/taskDefinitions/{taskDefinitionId}
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
|category|lifecycleTaskCategory|**TODO: Add Description**. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Required.|
|continueOnError|Boolean|**TODO: Add Description** Required.|
|description|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|**TODO: Add Description** Required.|
|version|Int32|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [taskDefinition](../resources/identitygovernance-taskdefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_taskdefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/taskDefinitions/{taskDefinitionId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

