---
title: "informationProtectionPolicySetting resource type"
description: "Represents the settings for a Microsoft Purview Information Protection label policy."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# informationProtectionPolicySetting resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a Microsoft Purview Information Protection label policy

## Methods

| Method                                                                                              | Return type                                                                                       | Description                                                                                                                                           |
| :-------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List](../api/security-informationprotectionpolicysetting-get.md) | [microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) | Read the properties and relationships of an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object. |


## Properties

| Property                         | Type    | Description                                                                   |
| :------------------------------- | :------ | :---------------------------------------------------------------------------- |
| id                               | String  | Unique identifier for the policy.                                             |
| isDowngradeJustificationRequired | Boolean | Exposes whether justification input is required on label downgrade.           |
| isMandatory                      | Boolean | Exposes whether mandatory labeling is enabled.                                |
| moreInfoUrl                      | String  | Exposes the more information URL that can be configured by the administrator. |

## Relationships

| Relationship | Type                                                          | Description                                                                                    |
| :----------- | :------------------------------------------------------------ | :--------------------------------------------------------------------------------------------- |
| defaultLabel | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) | Represents the default label for an organization. If no label is selected, the default label is applied. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.informationProtectionPolicySetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationProtectionPolicySetting",
  "id": "String (identifier)",
  "isDowngradeJustificationRequired": "Boolean",
  "isMandatory": "Boolean",
  "moreInfoUrl": "String"
}
```

