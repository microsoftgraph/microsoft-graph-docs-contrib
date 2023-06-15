---
title: "policyRule resource type"
description: "policy Rule"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policyRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

policy Rule
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get a list of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) objects and their properties.|
|[Get policyRule](../api/networkaccess-policyrule-get.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.|
|[Update policyRule](../api/networkaccess-policyrule-update.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Update the properties of a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|name|

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

