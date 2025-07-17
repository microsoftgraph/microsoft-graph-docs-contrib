---
title: "userAttributeValuesItem resource type"
description: "Represents user flow attribute values within a user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userAttributeValuesItem resource type

Namespace: microsoft.graph

Represents user flow attribute values within a user flow when there are multiple selections to choose from.  The userAttributeValuesItem is applicable to the userInputTypes of `radioSingleSelect`, `dropdownSingleSelect`, and `checkboxMultiSelect` for an [identityUserFlowAttributeAssignment](..\resources\identityuserflowattributeassignment.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isDefault|Boolean|Determines whether the value is set as the default.|
|name|String|The display name of the property displayed to the user in the user flow.|
|value|String|The value that is set when this item is selected.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userAttributeValuesItem"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userAttributeValuesItem",
  "name": "String",
  "value": "String",
  "isDefault": "Boolean"
}
```
