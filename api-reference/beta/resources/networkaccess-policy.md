---
title: "policy resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policies](../api/networkaccess-policylink-list-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) collection|Get a list of the [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) objects and their properties.|
|[Create policy](../api/networkaccess-policylink-post-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Create a new [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|
|[Get policy](../api/networkaccess-policy-get.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|
|[Update policy](../api/networkaccess-policy-update.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Update the properties of a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|
|[Delete policy](../api/networkaccess-policylink-delete-policy.md)|None|Delete a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get the policyRule resources from the policyRules navigation property.|
|[Create policyRule](../api/networkaccess-policy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Create a new policyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.policy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String"
}
```

