---
title: "policyRule resource type"
description: "A forwarding policy rule refers to a specific rule within a forwarding policy. It defines the conditions and criteria for forwarding or routing network traffic based on various factors such as source, destination, protocol, ports, and other parameters."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policyRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwarding policy rule refers to a specific rule within a forwarding policy. It defines the conditions and criteria for forwarding or routing network traffic based on various factors such as source, destination, protocol, ports, and other parameters.

This is an abstract type from which the [microsoft.graph.networkaccess.forwardingRule](networkaccess-forwardingrule.md) resource type is derived.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get a list of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) objects and their properties.|
|[Get policyRule](../api/networkaccess-policyrule-get.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-privateaccessforwardingrule.md) object.|
|[Update policyRule](../api/networkaccess-policyrule-update.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Update the properties of a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policyRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "id": "String (identifier)",
  "name": "String"
}
```

