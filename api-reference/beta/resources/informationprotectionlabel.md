---
title: "informationProtectionLabel resource type (deprecated)"
description: "Describes the information protection label that details how to properly apply a sensitivity label to information. Deprecated."
ms.localizationpriority: medium
author: "tommoser"
ms.subservice: "security"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# informationProtectionLabel resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [informationprotection-deprecate](../../includes/informationprotection-deprecate.md)]

Describes the information protection label that details how to properly apply a sensitivity label to information. The **informationProtectionLabel** resource describes the configuration of sensitivity labels that apply to a user or tenant.  

## Methods

| Method                                                                                              | Return Type                                                               | Description                                                                                                                                                            |
| :-------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List informationProtectionLabel](../api/informationprotectionpolicy-list-labels.md) (deprecated)              | [informationProtectionLabel](informationprotectionlabel.md) collection | List all configured information protection labels for a user or tenant.                                                                                                |
| [Get informationProtectionLabel](../api/informationprotectionlabel-get.md) (deprecated)                         | [informationProtectionLabel](informationprotectionlabel.md)               | Given a specific label ID, return the **informationProtectionLabel**.                                                                                                  |
| [evaluateapplication](../api/informationprotectionlabel-evaluateapplication.md) (deprecated)                    | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [labelingOptions](labelingoptions.md), compute the set of actions require to apply the label.                      |
| [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) (deprecated)  | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and classification results, compute the set of actions require to apply the label.                                  |
| [evaluateRemoval](../api/informationprotectionlabel-evaluateremoval.md) (deprecated)                            | [informationProtectionAction](informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [downgradeJustification](downgradejustification.md), compute the actions that should be taken to remove the label. |
| [extractLabel](../api/informationprotectionlabel-extractlabel.md) (deprecated)                                     | [informationProtectionContentLabel](informationprotectioncontentlabel.md) | Given an input of [contentInfo](contentinfo.md), return details on the [informationProtectionLabel](informationprotectionlabel.md) that the metadata represents.       |

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
| parent      | labelDetails   | The parent label associated with a child label. Null if label has no parent.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationProtectionLabel",
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
  "tooltip": "String",
  "parent": {"@odata.type": "microsoft.graph.labelDetails" }
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


