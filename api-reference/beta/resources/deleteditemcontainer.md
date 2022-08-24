---
title: "deletedItemContainer resource type"
description: "Methods, properties, and relationships of the deletedItemContainer resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# deletedItemContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that contains deleted workflows created using Lifecycle Workflows during the period before they are permanently deleted.

Inherits from [entity](../resources/entity.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing the deletedItemContainer. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Deleted workflows that end up in the deletedItemsContainer.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deletedItemContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedItemContainer",
  "id": "String (identifier)"
}
```
