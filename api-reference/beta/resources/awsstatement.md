---
title: "awsStatement resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsStatement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsStatements](../api/awsstatement-list.md)|[awsStatement](../resources/awsstatement.md) collection|Get a list of the [awsStatement](../resources/awsstatement.md) objects and their properties.|
|[Get awsStatement](../api/awsstatement-get.md)|[awsStatement](../resources/awsstatement.md)|Read the properties and relationships of an [awsStatement](../resources/awsstatement.md) object.|
|[Update awsStatement](../api/awsstatement-update.md)|[awsStatement](../resources/awsstatement.md)|Update the properties of an [awsStatement](../resources/awsstatement.md) object.|
|[Delete awsStatement](../api/awsstatement-delete.md)|None|Delete an [awsStatement](../resources/awsstatement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|String collection|**TODO: Add Description**|
|condition|[awsCondition](../resources/awscondition.md)|**TODO: Add Description**|
|effect|awsStatementEffect|**TODO: Add Description**.The possible values are: `allow`, `deny`, `unknownFutureValue`.|
|notActions|String collection|**TODO: Add Description**|
|notResources|String collection|**TODO: Add Description**|
|resources|String collection|**TODO: Add Description**|
|statementId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "statementId",
  "@odata.type": "microsoft.graph.awsStatement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsStatement",
  "statementId": "String (identifier)",
  "actions": [
    "String"
  ],
  "notActions": [
    "String"
  ],
  "resources": [
    "String"
  ],
  "notResources": [
    "String"
  ],
  "effect": "String",
  "condition": {
    "@odata.type": "microsoft.graph.awsCondition"
  }
}
```

