---
title: "policyLink resource type"
description: "The link to a policy associated with a specific profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 03/21/2024
---

# policyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type from which the following resource types are derived:
- [forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md)
- [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)
- [threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md)
- [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md)


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|Link status. The possible values are: `enabled`, `disabled`.|
|version|String|Version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Policy. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policyLink",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```

