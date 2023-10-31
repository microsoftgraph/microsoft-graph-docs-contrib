---
title: "awsStatement resource type"
description: "Specifies a single AWS Statement."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsStatement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies a single AWS Statement.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|String collection|AWS Actions.|
|condition|[awsCondition](../resources/awscondition.md)|AWS condition block|
|effect|awsStatementEffect|AWS Action Effect (Allow or Deny). The possible values are: `allow`, `deny`, `unknownFutureValue`.|
|notActions|String collection|AWS Not Actions|
|notResources|String collection|AWS Not Resources|
|resources|String collection|AWS Resources|
|statementId|String|AWS Statement Id.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

