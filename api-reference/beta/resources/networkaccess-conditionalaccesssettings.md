---
title: "conditionalAccessSettings resource type"
description: "Conditional access settings define how you can restore users source IP and how you can use compliant network validation to ensure that the user is connecting from a verified network."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# conditionalAccessSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Conditional access settings define how you can restore users source IP and how you can use compliant network validation. Source IP restoration preserves your original user IP context for all Microsoft Entra ID and Microsoft 365 traffic, and compliant network validation ensures the user is connecting from a verified network.

For more information about conditional access settings, see [Universal Conditional Access through Global Secure Access](/entra/global-secure-access/concept-universal-conditional-access) and [Source IP restoration](/entra/global-secure-access/how-to-universal-tenant-restrictions).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-get.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|
|[Update conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-update.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Update the properties of a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|signalingStatus|microsoft.graph.networkaccess.status|When SignalingStatus is enabled, the Conditional Access policy includes zero trust network access information. The possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
