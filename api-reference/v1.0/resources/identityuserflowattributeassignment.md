---
title: "identityUserFlowAttributeAssignment resource type"
description: "Represents how attributes are collected in an identity user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/19/2024
---

# identityUserFlowAttributeAssignment resource type

Namespace: microsoft.graph

Represents how attributes are collected in an identity user flow. and allows customization options for collecting attributes within the user flow. You can have multiple identityUserFlowAttributeAssignments within a single user flow that creates the experience for providing the information required by the user to complete sign-up.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/identityuserflowattributeassignment-get.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Read the properties and relationships of an identityUserFlowAttributeAssignment object.|
|[Update](../api/identityuserflowattributeassignment-update.md)|None|Update the properties of an identityUserFlowAttributeAssignment object.|
|[Delete](../api/identityuserflowattributeassignment-delete.md)|None|Delete a specific identityUserFlowAttributeAssignment object.|
|[Get order](../api/identityuserflowattributeassignment-getorder.md)|[assignmentOrder](../resources/assignmentorder.md)|Gets the order of the identityUserFlowAttributes being collected within a user flow.|
|[Set order](../api/identityuserflowattributeassignment-setorder.md)|None|Sets the order of the identityUserFlowAttributes being collected within a user flow.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identityUserFlowAttribute within a user flow.|
|id|String|The identifier of the identityUserFlowAttributeAssignment. This identifier is immutable after it's created and is a read-only property.|
|isOptional|Boolean|Determines whether the identityUserFlowAttribute is optional. `true` means the user doesn't have to provide a value. `false` means the user can't complete sign-up without providing a value.|
|requiresVerification|Boolean|Determines whether the identityUserFlowAttribute requires verification, and is only used for verifying the user's phone number or email address.|
|userAttributeValues|[userAttributeValuesItem](../resources/userattributevaluesitem.md) collection|The input options for the user flow attribute. Only applicable when the userInputType is `radioSingleSelect`, `dropdownSingleSelect`, or `checkboxMultiSelect`.|
|userInputType|identityUserFlowAttributeInputType|The input type of the user flow attribute. Possible values are: `textBox`, `dateTimeDropdown`, `radioSingleSelect`, `dropdownSingleSelect`, `emailBox`, `checkboxMultiSelect`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userAttribute|[identityUserFlowAttribute](../resources/identityuserflowattribute.md)|The user attribute that you want to add to your user flow.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityUserFlowAttributeAssignment",
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
