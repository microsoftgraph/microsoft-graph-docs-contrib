---
title: "network access settings resource type"
description: "The tenant configuration settings that are associated with Microsoft Entra Internet Access and Microsoft Entra Private Access capabilities."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# network access settings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Global Secure Access settings for the tenant.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-get.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) collection|Get the conditionalAccessSettings resources from the conditionalAccess navigation property.|
|[Update conditionalAccessSettings](../api/networkaccess-conditionalaccesssettings-update.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Create a new conditionalAccessSettings object.|
|[Get crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-get.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) collection|Get the crossTenantAccessSettings resources from the crossTenantAccess navigation property.|
|[Update crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-update.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Create a new crossTenantAccessSettings object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccess|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)| Defines whether conditional access settings are enabled for traffic profiles. Each tenant has only one conditional access settings object. |
|crossTenantAccess|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)| Defines whether the tenant restrictions cross-tenant access settings are enabled for traffic profiles. Each tenant has only one cross-tenant access settings object.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.settings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.settings",
  "id": "String (identifier)"
}
```

