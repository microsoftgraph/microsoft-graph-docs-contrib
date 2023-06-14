---
title: "forwardingPolicy resource type"
description: "A forwarding policy defines what traffic is routed through Network Access Service and is added to a forwardingProfile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Forwarding Policy will define what traffic is routed through Network Access. In order to enact the policy, forwardingPolicies will be added to forwardingProfiles.	


Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingPolicies](../api/networkaccess-networkaccessroot-list-forwardingpolicies.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) objects and their properties.|
|[Create forwardingPolicy](../api/networkaccess-networkaccessroot-post-forwardingpolicies.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md)|Create a new [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.|
|[Get forwardingPolicy](../api/networkaccess-forwardingpolicy-get.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.|
|[Update forwardingPolicy](../api/networkaccess-forwardingpolicy-update.md)|[microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.|
|[Delete forwardingPolicy](../api/networkaccess-networkaccessroot-delete-forwardingpolicies.md)|None|Delete a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get the policyRule resources from the policyRules navigation property.|
|[Create policyRule](../api/networkaccess-forwardingpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Create a new policyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Forwarding policy description Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|Identifier for the forwarding policy Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Forwarding policy name Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|Traffic type for forwarding policy. The possible values are: `m365`, `internet`, `private`.|
|version|String|Forwarding policy version Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection| Represents the definition of the policy ruleset that makes up the core definition of a policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
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

