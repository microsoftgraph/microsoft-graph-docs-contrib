---
title: "informationProtectionLabel resource type"
description: "Describes the information proteciton label that details how to properly apply a sensitivity label to information."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# informationProtectionLabel resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The informationProtectionLabel resource describes the configuration of sensitivity labels that apply to a user or tenant.  

## Methods

| Method                                                                                              | Return Type                                                               | Description                                                                                                                                                            |
| :-------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get informationProtectionLabel](../api/informationprotectionlabel-get.md)                          | [informationProtectionLabel](informationprotectionlabel.md)               | Read all configured information protection labels for a user or tenant.                                                                                                |
| [Evaluateapplication](../api/informationprotectionlabel-evaluateapplication.md)                     | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentInfo.md) and [labelingOptions](labelingOptions.md), compute the set of actions require to apply the label.                      |
| [Evaluateclassificationresults](../api/informationprotectionlabel-evaluateclassificationresults.md) | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentInfo.md) and [classificationResults](), compute the set of actions require to apply the label.                                  |
| [Evaluateremoval](../api/informationprotectionlabel-evaluateremoval.md)                             | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentInfo.md) and [downgradeJustification](downgradeJustification.md), compute the actions that should be taken to remove the label. |
| [Extractlabel](../api/informationprotectionlabel-extractlabel.md)                                   | [informationProtectionContentLabel](informationprotectioncontentlabel.md) | Given an input of [contentInfo](contentInfo.md), return details on the [informationProtectionLabel](informationProtectionLabel.md) that the metadata represents.       |

## Properties

| Property    | Type    | Description                                                                                     |
| :---------- | :------ | :---------------------------------------------------------------------------------------------- |
| color       | String  | The color that the UI should display for the label, if configured.                              |
| description | String  | The admin-defined description for the label.                                                    |
| id          | String  | The label ID is a globally unique identifier (GUID)                                             |
| isActive    | Boolean | Indicates whether the label is active or not. Active labels should be hidden or disabled in UI. |
| name        | String  | The plaintext name of the label.                                                                |
| sensitivity | Int32   | The sensitivity value of the label, where lower is less sensitive.                              |
| tooltip     | String  | The tooltip that should be displayed for the label in a UI.                                     |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationProtectionLabel",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "color": "String",
  "description": "String",
  "id": "String (identifier)",
  "isActive": true,
  "name": "String",
  "sensitivity": 1024,
  "tooltip": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->