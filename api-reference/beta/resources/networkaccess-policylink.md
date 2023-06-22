---
title: "policyLink resource type"
description: "The PolicyLink object contains the link to a policy associated with a specific profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The PolicyLink object contains the link to a policy associated with a specific profile.
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get policyLink](../api/networkaccess-forwardingpolicylink-get.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[Update policyLink](../api/networkaccess-forwardingpolicylink-update.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Update the properties of a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[List policy](../api/networkaccess-forwardingpolicylink-list.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) collection|Get the policy resources from the policy navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|Link status. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|Version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[policy](../resources/networkaccess-policy.md)|policy|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policyLink",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```

