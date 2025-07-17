---
title: "forwardingPolicy resource type"
description: "A forwarding policy defines the specific traffic that is routed through the Global Secure Access services. It's then added to a forwarding profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 05/23/2024
---

# forwardingPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwarding policy defines the specific traffic that is routed through the Global Secure Access services. It's then added to a [forwarding profile](networkaccess-forwardingprofile.md).

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-forwardingpolicies.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) objects and their properties.|
|[Get](../api/networkaccess-forwardingpolicy-get.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.|
|[Update policy rules](../api/networkaccess-forwardingpolicy-updatepolicyrules.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md)|Update the rules within a forwarding policy.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Forwarding policy description. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|Identifier for the forwarding policy. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Forwarding policy name. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|Traffic type for forwarding policy. The possible values are: `m365`, `internet`, `private`.|
|version|String|Forwarding policy version. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection| Represents the definition of the policy ruleset that makes up the core definition of a policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.forwardingPolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "trafficForwardingType": "String"
}
```

