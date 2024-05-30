---
title: "workbookEmailIdentity resource type"
description: "Represents an identity of an actor."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# workbookEmailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity of an _actor_. For example, an actor can be a user who created, modified, or completed a task.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| Display name of the user.|
|email|String|Email address of the user.|
|id|String|The unique identifier of the user.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workbookEmailIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookEmailIdentity",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)"
}
```

