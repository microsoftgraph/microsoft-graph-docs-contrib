---
title: "policyDeletableItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# policyDeletableItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policydeletableitem-list.md)|[policyDeletableItem](../resources/policydeletableitem.md) collection|Get a list of the policyDeletableItem objects and their properties.|
|[Get](../api/policydeletableitem-get.md)|[policyDeletableItem](../resources/policydeletableitem.md)|Read the properties and relationships of [policyDeletableItem](../resources/policydeletableitem.md) object.|
|[Update](../api/policydeletableitem-update.md)|[policyDeletableItem](../resources/policydeletableitem.md)|Update the properties of a policyDeletableItem object.|
|[Delete](../api/policydeletableitem-delete.md)|None|Delete a policyDeletableItem object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyDeletableItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyDeletableItem",
  "deletedDateTime": "String (timestamp)"
}
```

