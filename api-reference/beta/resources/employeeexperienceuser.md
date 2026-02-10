---
title: "employeeExperienceUser resource type"
description: "Represents a user's employee experience settings and features."
author: "aditijha4"
ms.date: 02/06/2026
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# employeeExperienceUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's employee experience settings and features, including storyline functionality for following and engagement.

Inherits from [entity](../resources/entity.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the employee experience user. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storyline|[storyline](../resources/storyline.md)|The user's storyline for following and engagement features.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.employeeExperienceUser",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.employeeExperienceUser",
  "id": "String (identifier)"
}
```

