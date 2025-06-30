---
title: "singleValueExtendedProperty resource type"
description: "SingleValueExtendedProperty"
author: "SindhuGunturi"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# singleValueExtendedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An extended property that contains a single value.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/todotask-post-singlevalueextendedproperties.md)|[singleValueExtendedProperty](../resources/singlevalueextendedproperty.md)|Create a new singleValueExtendedProperty on a task.|
|[Update](../api/todotask-update-singlevalueextendedproperties.md)|[singleValueExtendedProperty](../resources/singlevalueextendedproperty.md)|Update a singleValueExtendedProperty on a task.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|For permitted formats of id, please see - (../resources/singlevaluelegacyextendedproperty.md)|
|value|String|Value of the property|

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

