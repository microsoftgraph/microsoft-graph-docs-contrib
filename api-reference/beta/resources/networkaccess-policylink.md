---
title: "policyLink resource type"
description: "Contains the link for a Policy for a given profile"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the link for a Policy for a given profile
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyLinks](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get a list of the [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) objects and their properties.|
|[Create policyLink](../api/networkaccess-filteringprofile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[Get policyLink](../api/networkaccess-policylink-get.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[Update policyLink](../api/networkaccess-policylink-update.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Update the properties of a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[Delete policyLink](../api/networkaccess-filteringprofile-delete-policies.md)|None|Delete a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.|
|[List policy](../api/networkaccess-policylink-list-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) collection|Get the policy resources from the policy navigation property.|
|[Add policy](../api/networkaccess-policylink-post-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Add policy by posting to the policy collection.|
|[Remove policy](../api/networkaccess-policylink-delete-policy.md)|None|Remove a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|Link status.The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|version|

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

