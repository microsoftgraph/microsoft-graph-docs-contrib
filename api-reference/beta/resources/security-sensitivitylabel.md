---
title: "sensitivityLabel resource type"
description: "Describes the sensitivity protection label that details how to properly apply a sensitivity label to information."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# sensitivityLabel resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the information protection label that details how to properly apply a sensitivity label to information. The **informationProtectionLabel** resource describes the configuration of sensitivity labels that apply to a user or tenant.
  
## Methods

| Method                                                                                             | Return type                                                                                    | Description                                                                                                                                                            |
| :------------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List sensitivityLabels](../api/security-informationprotection-list-sensitivitylabels.md)                                | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                       | Get a list of the [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) objects and their properties.                                                          |
| [Get sensitivityLabel](../api/security-sensitivitylabel-get.md)                                    | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)                                  | Read the properties and relationships of a [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) object.                                                       |
| [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md)                     | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection | Given an input of [contentInfo](contentinfo.md) and [labelingOptions](labelingoptions.md), compute the set of actions required to apply the label.                     |
| [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md) | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection | Given an input of [contentInfo](contentinfo.md) and classification results, compute the set of actions required to apply the label.                                    |
| [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md)                             | [microsoft.graph.security.informationProtectionAction](../resources/security-informationprotectionaction.md) collection  | Given an input of [contentInfo](contentinfo.md) and [downgradeJustification](downgradejustification.md), compute the actions that should be taken to remove the label. |
| [extractContentLabel](../api/security-sensitivitylabel-extractcontentlabel.md)                     | [microsoft.graph.security.contentLabel](../resources/security-contentlabel.md)                                          | Given an input of [contentInfo](contentinfo.md), return details on the [informationProtectionLabel](informationprotectionlabel.md) that the metadata represents.       |

## Properties
| Property       | Type              | Description                                                                                                |
| :------------- | :---------------- | :--------------------------------------------------------------------------------------------------------- |
| color          | String            | The color that the UI should display for the label, if configured.                                         |
| contentFormats | String collection | Returns the supported content formats for the label.                                                       |
| description    | String            | The admin-defined description for the label.                                                               |
| hasProtection  | Boolean           | Indicates whether the label has protection actions configured.                                             |
| id             | String            | The label ID is a globally unique identifier (GUID).                                                       |
| isActive       | Boolean           | Indicates whether the label is active or not. Active labels should be hidden or disabled in the UI.        |
| isAppliable    | Boolean           | Indicates whether the label can be applied to content. `False` if the label is a parent with child labels. |
| name           | String            | The plaintext name of the label.                                                                           |
| sensitivity    | Int32             | The sensitivity value of the label, where lower is less sensitive.                                         |
| tooltip        | String            | The tooltip that should be displayed for the label in a UI.                                                |

## Relationships
| Relationship | Type                                                          | Description                                                                        |
| :----------- | :------------------------------------------------------------ | :--------------------------------------------------------------------------------- |
| parent       | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) | The parent label associated with a child label. `Null` if the label has no parent. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensitivityLabel",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensitivityLabel",
  "color": "String",
  "contentFormats": [
    "String"
  ],
  "description": "String",
  "hasProtection": "Boolean",
  "id": "String (identifier)",
  "isActive": "Boolean",
  "isAppliable": "Boolean",
  "name": "String",
  "sensitivity": "Integer",
  "tooltip": "String"
}
```

