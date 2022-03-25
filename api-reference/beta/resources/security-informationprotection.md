---
title: "informationProtection resource type"
description: "Exposes methods that you can use to get Microsoft Information Protection labels and label policies."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# informationProtection resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes methods that you can use to get Microsoft Information Protection labels and label policies.

## Methods
| Method                                                                                              | Return type                                                                                                  | Description                                                                                                    |
| :-------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------- |
| [Get informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-get.md) | [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) collection | Get the **informationProtectionPolicySetting** resources from the **labelPolicySettings** navigation property. |
| [List sensitivityLabels](../api/security-list-sensitivitylabels.md)                                 | [sensitivityLabel](../resources/security-sensitivitylabel.md) collection            | Get the **sensitivityLabel** resources from the **sensitivityLabels** navigation property.                             |

## Properties
None.

## Relationships
| Relationship        | Type                                                                                              | Description                                                                                |
| :------------------ | :------------------------------------------------------------------------------------------------ | :----------------------------------------------------------------------------------------- |
| labelPolicySettings | [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) | Method gets Microsoft Information Protection policy settings for the user or organization. |
| sensitivityLabels   | [sensitivityLabel](../resources/security-sensitivitylabel.md) collection | Method gets Microsoft Information Protection labels for the user or organization.          |

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

