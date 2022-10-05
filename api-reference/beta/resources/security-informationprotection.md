---
title: "informationProtection resource type"
description: "Exposes methods that you can use to get Microsoft Purview Information Protection labels and label policies."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# informationProtection resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes methods that you can use to get Microsoft Purview Information Protection labels and label policies.

## Methods
| Method                                                                                              | Return type                                                                                                  | Description                                                                                                    |
| :-------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------- |
| [Get informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-get.md) | [microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) collection | Read the properties and relationships of an [informationProtectionPolicySetting](security-informationprotectionpolicysetting.md) object. |
| [List sensitivityLabels](../api/security-informationprotection-list-sensitivitylabels.md)                                 | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection            | Get a list of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects associated with a user or organization.                             |

## Properties
None.

## Relationships
| Relationship        | Type                                                                                              | Description                                                                                |
| :------------------ | :------------------------------------------------------------------------------------------------ | :----------------------------------------------------------------------------------------- |
| labelPolicySettings | [microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) | Read the Microsoft Purview Information Protection policy settings for the user or organization. |
| sensitivityLabels   | [microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection |Read the Microsoft Purview Information Protection labels for the user or organization.          |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.informationProtection",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationProtection"
}
```

