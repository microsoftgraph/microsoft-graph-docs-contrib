---
title: "conditionalAccessSettings resource type"
description: "Conditional access settings. Admin can enable or disable conditional access signaling for source IP restoration and Connectivity through NaaS."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# conditionalAccessSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Conditional access settings. Admin can enable or disable conditional access signaling for source IP restoration and Connectivity through NaaS.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessSettings](../api/networkaccess-settings-list-conditionalaccess.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) collection|Get a list of the [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) objects and their properties.|
|[Create conditionalAccessSettings](../api/networkaccess-settings-post-conditionalaccess.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Create a new [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|
|[Get conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-get.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|
|[Update conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-update.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Update the properties of a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|
|[Delete conditionalAccessSettings](../api/networkaccess-settings-delete-conditionalaccess.md)|None|Delete a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|signalingStatus|microsoft.graph.networkaccess.status|Conditional Access policy includes zero trust network access information when SignalingStatus is enabled	.The possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.conditionalAccessSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.conditionalAccessSettings",
  "id": "String (identifier)",
  "signalingStatus": "String"
}
```

