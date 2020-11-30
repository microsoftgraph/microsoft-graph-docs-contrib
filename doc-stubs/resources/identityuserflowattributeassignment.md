---
title: "identityUserFlowAttributeAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# identityUserFlowAttributeAssignment resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityUserFlowAttributeAssignments](../api/identityuserflowattributeassignment-list.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|Get a list of the [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) objects and their properties.|
|[Create identityUserFlowAttributeAssignment](../api/identityuserflowattributeassignment-create.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Create a new [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.|
|[Get identityUserFlowAttributeAssignment](../api/identityuserflowattributeassignment-get.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Read the properties and relationships of an [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.|
|[Update identityUserFlowAttributeAssignment](../api/identityuserflowattributeassignment-update.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Update the properties of an [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.|
|[Delete identityUserFlowAttributeAssignment](../api/identityuserflowattributeassignment-delete.md)|None|Deletes an [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.|
|[getOrder](../api/identityuserflowattributeassignment-getorder.md)|[assignmentOrder](../resources/assignmentorder.md)|**TODO: Add Description**|
|[setOrder](../api/identityuserflowattributeassignment-setorder.md)|None|**TODO: Add Description**|
|[List identityUserFlowAttribute](../api/identityuserflowattributeassignment-list-userattribute.md)|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|Get the identityUserFlowAttribute resources from the userAttribute navigation property.|
|[Add identityUserFlowAttribute](../api/identityuserflowattributeassignment-post-userattribute.md)|[identityUserFlowAttribute](../resources/identityuserflowattribute.md)|Add userAttribute by posting to the userAttribute collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|isOptional|Boolean|**TODO: Add Description**|
|requiresVerification|Boolean|**TODO: Add Description**|
|userAttributeValues|[userAttributeValuesItem](../resources/userattributevaluesitem.md) collection|**TODO: Add Description**|
|userInputType|identityUserFlowAttributeInputType|**TODO: Add Description**. Possible values are: `textBox`, `dateTimeDropdown`, `radioSingleSelect`, `dropdownSingleSelect`, `emailBox`, `checkboxMultiSelect`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userAttribute|[identityUserFlowAttribute](../resources/identityuserflowattribute.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityUserFlowAttributeAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityUserFlowAttributeAssignment",
  "id": "String (identifier)",
  "isOptional": "Boolean",
  "requiresVerification": "Boolean",
  "userInputType": "String",
  "userAttributeValues": [
    {
      "@odata.type": "microsoft.graph.userAttributeValuesItem"
    }
  ],
  "displayName": "String"
}
```

