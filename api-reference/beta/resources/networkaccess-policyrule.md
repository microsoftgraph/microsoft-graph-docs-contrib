---
title: "policyRule resource type"
description: "An abstract data type designed to represent a rule within a policy."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# policyRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract data type designed to represent a rule within a policy.
This is an abstract type from which the [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) resource and [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) resource types are derived.

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
The following JSON representation shows the resource type.
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

