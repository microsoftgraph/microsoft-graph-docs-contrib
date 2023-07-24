---
title: "Global Secure Access settings resource type"
description: "The tenant configuration settings that are associated with Microsoft Entra Internet Access and Microsoft Entra Private Access capabilities under the umbrella of Global Secure Access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# Global Secure Access settings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The tenant configuration settings that are associated with the Microsoft Entra Internet Access and Microsoft Entra Private Access capabilities under the umbrella of Global Secure Access.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

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

