---
title: "forwardingPolicy resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|trafficForwardingType|microsoft.graph.networkaccess.trafficForwardingType|**TODO: Add Description**.The possible values are: `m365`, `internet`, `private`, `unknownFutureValue`.|
|version|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|

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

