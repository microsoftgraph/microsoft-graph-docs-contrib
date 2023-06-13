---
title: "filteringPolicy resource type"
description: "FilteringPolicy contains different types of policies configured by Network Access admins, such as network filtering, data loss prevention, and threat protection"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

FilteringPolicy contains different types of policies configured by Network Access admins, such as network filtering, data loss prevention, and threat protection

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringPolicies](../api/networkaccess-networkaccessroot-list-filteringpolicies.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) objects and their properties.|
|[Create filteringPolicy](../api/networkaccess-networkaccessroot-post-filteringpolicies.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Create a new [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[Get filteringPolicy](../api/networkaccess-filteringpolicy-get.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[Update filteringPolicy](../api/networkaccess-filteringpolicy-update.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Update the properties of a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[Delete filteringPolicy](../api/networkaccess-networkaccessroot-delete-filteringpolicies.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get the policyRule resources from the policyRules navigation property.|
|[Create policyRule](../api/networkaccess-filteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Create a new policyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|created DateTime|
|description|String|Description Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|Unique Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last Modified DateTime|
|name|String|name Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|version|String|version Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|policy Rules Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```

