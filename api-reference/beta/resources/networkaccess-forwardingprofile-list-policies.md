---
title: "forwardingPolicyLink resource type"
description: "A forwardingPolicyLink establishes a connection between a forwarding policy and a forwarding profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwardingPolicyLink establishes a connection between a forwarding policy and a forwarding profile.

Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingPolicyLinks](../api/s networkaccess-forwardingprofile-list-policies.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies) collection|Get a list of the [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies) objects and their properties.|
|[Get forwardingPolicyLink](../api/networkaccess-forwardingpolicylink-get.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies.md) object.|
|[Update forwardingPolicyLink](../api/networkaccess-forwardingpolicylink-update.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingprofile-list-policies.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|Status Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).The possible values are: `enabled`, `disabled`.|
|version|String|Version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[policy](../resources/networkaccess-policy.md)|The forwarding policy. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.forwardingPolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```

