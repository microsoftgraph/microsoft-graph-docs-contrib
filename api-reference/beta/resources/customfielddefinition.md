---
title: "customFieldDefinition resource type (planner)"
description: "A custom field defined on a plan, used to capture structured, plan-specific data on tasks. Choice options for single-choice and multiple-choice fields are contained under `choiceOptions`; values are set per task via customFieldValue."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# customFieldDefinition resource type (planner)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A custom field defined on a [plan](plan.md), used to capture structured, plan-specific data on [tasks](task.md). Choice options for single-choice and multiple-choice fields are contained under `choiceOptions`; values are set per task via [customFieldValue](customfieldvalue.md).


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-customfielddefinitions.md)|[customFieldDefinition](../resources/customfielddefinition.md) collection|Get a list of the customFieldDefinition objects and their properties.|
|[Create](../api/plan-post-customfielddefinitions.md)|[customFieldDefinition](../resources/customfielddefinition.md)|Create a new customFieldDefinition object.|
|[Get](../api/customfielddefinition-get.md)|[customFieldDefinition](../resources/customfielddefinition.md)|Read the properties and relationships of [customFieldDefinition](../resources/customfielddefinition.md) object.|
|[Update](../api/customfielddefinition-update.md)|[customFieldDefinition](../resources/customfielddefinition.md)|Update the properties of a customFieldDefinition object.|
|[Delete](../api/plan-delete-customfielddefinitions.md)|None|Delete a customFieldDefinition object.|
|[List choiceOptions](../api/customfielddefinition-list-choiceoptions.md)|[customChoiceOption](../resources/customchoiceoption.md) collection|Get a list of the customChoiceOption objects and their properties.|
|[Create customChoiceOption](../api/customfielddefinition-post-choiceoptions.md)|[customChoiceOption](../resources/customchoiceoption.md)|Create a new customChoiceOption object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who created the entity. Read-only.|
|createdDateTime|DateTimeOffset|Date and time the entity was created. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|deletedBy|[identitySet](../resources/identityset.md)|Identity of the user who deleted the custom field definition, if it was deleted.|
|deletedDateTime|DateTimeOffset|Date and time the custom field definition was deleted, if applicable.|
|displayName|String|Name of the custom field.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|planId|String|ID of the plan the custom field is defined on. Required, and immutable after creation.|
|rollupType|customFieldRollupType|How values of this custom field are rolled up across tasks. The possible values are: `noRollup`, `max`, `min`, `sum`, `average`, `unknownFutureValue`.|
|valueType|customFieldValueType|Data type of the custom field's values.. The possible values are: `text`, `date`, `utcDateTime`, `number`, `decimal`, `flag`, `singleChoiceText`, `multipleChoiceText`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|choiceOptions|[customChoiceOption](../resources/customchoiceoption.md) collection|The collection of selectable choice options for a single-choice or multiple-choice custom field. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customFieldDefinition",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customFieldDefinition",
  "id": "String (identifier)",
  "planId": "String",
  "displayName": "String",
  "valueType": "String",
  "rollupType": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "deletedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "deletedDateTime": "String (timestamp)",
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  }
}
```

