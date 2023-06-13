---
title: "forwardingPolicyLink resource type"
description: "A forwardingPolicyLink connects a forwarding Policy with a forwarding profile"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwardingPolicyLink connects a forwarding Policy with a forwarding profile

Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingPolicyLinks](../api/networkaccess-forwardingpolicylink-list.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) objects and their properties.|
|[Get forwardingPolicyLink](../api/networkaccess-forwardingpolicylink-get.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object.|
|[Update forwardingPolicyLink](../api/networkaccess-forwardingpolicylink-update.md)|[microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object.|
|[Delete forwardingPolicyLink](../api/networkaccess-forwardingpolicylink-delete.md)|None|Delete a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object.|
|[List policy](../api/networkaccess-policylink-list-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) collection|Get the policy resources from the policy navigation property.|
|[Add policy](../api/networkaccess-forwardingpolicylink-post-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Add policy by posting to the policy collection.|
|[Remove policy](../api/networkaccess-forwardingpolicylink-delete-policy.md)|None|Remove a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|Status Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).The possible values are: `enabled`, `disabled`.|
|version|String|version Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[policy](../resources/networkaccess-policy.md)|forwarding Policy Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|

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

