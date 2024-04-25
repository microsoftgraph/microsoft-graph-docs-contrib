---
title: "awsStatement resource type"
description: "Specifies an AWS statement that includes information about a single permission."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsStatement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies an AWS statement that includes information about a single permission.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|String collection|The AWS actions.|
|condition|[awsCondition](../resources/awscondition.md)|The AWS conditions associated with the statement.|
|effect|awsStatementEffect|The AWS action effect, whether to allow or deny. The possible values are: `allow`, `deny`, `unknownFutureValue`.|
|notActions|String collection|AWS Not Actions|
|notResources|String collection|AWS Not Resources|
|resources|String collection|The AWS resources associated with the statement.|
|statementId|String|The ID of the AWS statement.|

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

