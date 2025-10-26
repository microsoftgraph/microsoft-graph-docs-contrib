---
title: "singleValueExtendedProperty resource type"
description: "Represents an extended property that contains a single value."
author: "SindhuGunturi"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# singleValueExtendedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an extended property that contains a single value.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for a **singleValueExtendedProperty** object. For the list of permitted ID formats, see [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md).|
|value|String|The value of the property.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.singleValueExtendedProperty",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleValueExtendedProperty",
  "id": "String (identifier)",
  "value": "String"
}
```

