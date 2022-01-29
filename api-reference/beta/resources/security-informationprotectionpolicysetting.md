---
title: "informationProtectionPolicySetting resource type"
description: "Resource that exposes the Microsoft Information Protection label policy settings."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# informationProtectionPolicySetting resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that exposes the Microsoft Information Protection label policy settings.

## Methods

| Method                                                                                                  | Return type                                                                                                                | Description                                                                                                                                           |
| :------------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-get.md)     | [microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) | Read the properties and relationships of an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object. |
| [Get default sensitivityLabel](../api/security-informationprotectionpolicysetting-list-defaultlabel.md) | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection                          | Get the sensitivityLabel resources from the defaultLabel navigation property.                                                                         |

## Properties

| Property                         | Type    | Description                                                                   |
| :------------------------------- | :------ | :---------------------------------------------------------------------------- |
| id                               | String  | Policy Id.                                                                    |
| isDowngradeJustificationRequired | Boolean | Exposes whether justification input is required on label downgrade.           |
| isMandatory                      | Boolean | Exposes whether mandatory labeling is enabled.                                |
| moreInfoUrl                      | String  | Exposes the more information URL that can be configured by the administrator. |

## Relationships

| Relationship | Type                                                          | Description                                                                                    |
| :----------- | :------------------------------------------------------------ | :--------------------------------------------------------------------------------------------- |
| defaultLabel | [sensitivityLabel](../resources/security-sensitivitylabel.md) | Represents the default label for an organization. If no label is select, this will be applied. |

## JSON representation
The following is a JSON representation of the resource.
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

