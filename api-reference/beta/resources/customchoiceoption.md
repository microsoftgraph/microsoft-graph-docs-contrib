---
title: "customChoiceOption resource type"
description: "A selectable option for a single-choice or multiple-choice customFieldDefinition, contained under its `choiceOptions` collection."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# customChoiceOption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A selectable option for a single-choice or multiple-choice [customFieldDefinition](customfielddefinition.md), contained under its `choiceOptions` collection.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/customfielddefinition-list-choiceoptions.md)|[customChoiceOption](../resources/customchoiceoption.md) collection|Get a list of the customChoiceOption objects and their properties.|
|[Create](../api/customfielddefinition-post-choiceoptions.md)|[customChoiceOption](../resources/customchoiceoption.md)|Create a new customChoiceOption object.|
|[Get](../api/customchoiceoption-get.md)|[customChoiceOption](../resources/customchoiceoption.md)|Read the properties and relationships of [customChoiceOption](../resources/customchoiceoption.md) object.|
|[Update](../api/customchoiceoption-update.md)|[customChoiceOption](../resources/customchoiceoption.md)|Update the properties of a customChoiceOption object.|
|[Delete](../api/customfielddefinition-delete-choiceoptions.md)|None|Delete a customChoiceOption object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display text of the choice option.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customChoiceOption",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customChoiceOption",
  "id": "String (identifier)",
  "displayName": "String",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

