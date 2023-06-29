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

This is an abstract type from which the [forwardingRule](networkaccess-forwardingrule.md) resource type is derived.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.


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

