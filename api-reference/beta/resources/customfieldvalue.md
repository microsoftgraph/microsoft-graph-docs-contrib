---
title: "customFieldValue resource type (planner)"
description: "The value of a customFieldDefinition set on a task. `customFieldDefinitionId` references the owning plan's custom field definition."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# customFieldValue resource type (planner)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The value of a [customFieldDefinition](customfielddefinition.md) set on a [task](task.md). `customFieldDefinitionId` references the owning plan's custom field definition.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/task-list-customfieldvalues.md)|[customFieldValue](../resources/customfieldvalue.md) collection|Get a list of the customFieldValue objects and their properties.|
|[Create](../api/task-post-customfieldvalues.md)|[customFieldValue](../resources/customfieldvalue.md)|Create a new customFieldValue object.|
|[Get](../api/customfieldvalue-get.md)|[customFieldValue](../resources/customfieldvalue.md)|Read the properties and relationships of [customFieldValue](../resources/customfieldvalue.md) object.|
|[Update](../api/customfieldvalue-update.md)|[customFieldValue](../resources/customfieldvalue.md)|Update the properties of a customFieldValue object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customFieldDefinitionId|String|ID of the customFieldDefinition this value is for. Immutable after creation.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|value|String|The value of the custom field, formatted according to the field's valueType.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customFieldValue",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customFieldValue",
  "id": "String (identifier)",
  "customFieldDefinitionId": "String",
  "value": "String"
}
```

