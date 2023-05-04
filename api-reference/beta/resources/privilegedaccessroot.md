---
title: "privilegedAccessRoot resource type"
description: "Represents the entry point for resources related to Privileged Identity Management (PIM)."
author: "ilyalushnikov"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# privilegedAccessRoot resource type

Namespace: microsoft.graph

Represents the entry point for resources related to Privileged Identity Management (PIM).

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for an object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[privilegedAccessGroup](../resources/privilegedaccessgroup.md)|A group that's governed through Privileged Identity Management (PIM).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegedAccessRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegedAccessRoot",
  "id": "String (identifier)"
}
```

