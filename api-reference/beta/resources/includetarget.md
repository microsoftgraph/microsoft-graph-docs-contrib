---
title: "includeTarget resource type"
description: "Defines the users and groups that are included in a set of changes."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# includeTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the users and groups that are included in a set of changes.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the entity targeted.|
|targetType|authenticationMethodTargetType|The kind of entity targeted. Possible values are: `user`, `group`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.includeTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.includeTarget",
  "id": "String (identifier)",
  "targetType": "String"
}
```
