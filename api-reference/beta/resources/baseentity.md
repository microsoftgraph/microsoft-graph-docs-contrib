---
title: "baseEntity resource type"
description: "Represents a base entity."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 11/05/2025
---

# baseEntity resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base entity.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the entity. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name of the entity|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.networkaccess.baseEntity"
  }
-->
``` json
{"@odata.type": "#microsoft.graph.networkaccess.baseEntity",
  "id": "String (identifier)",
  "name": "String"
}
```