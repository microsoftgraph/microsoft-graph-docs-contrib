---
title: "policy resource type"
description: "A traffic forwarding policy consists of a policy and its associated rules. It defines the guidelines and instructions for routing and handling network traffic."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# policy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A traffic forwarding policy consists of a policy and its associated rules. It defines the guidelines and instructions for routing and handling network traffic.

It's an abstract type from which the following resources are derived:

- [microsoft.graph.networkaccess.forwardingPolicy](networkaccess-forwardingpolicy.md)
- [microsoft.graph.networkaccess.filteringPolicy](networkaccess-filteringpolicy.md)
- [microsoft.graph.networkaccess.threatIntelligencePolicy](networkaccess-threatintelligencepolicy.md)


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description.|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Policy name.|
|version|String|Version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Represents the definition of the policy ruleset that makes up the core definition of a policy. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String"
}
```

