---
title: settings resource type for Global Secure Access
description: "The tenant configuration settings associated with Microsoft Entra Internet Access and Microsoft Entra Private Access. These capabilities are under the umbrella of Global Secure Access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# settings resource type for Global Secure Access

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The tenant configuration settings associated with Microsoft Entra Internet Access and Microsoft Entra Private Access. These capabilities are under the umbrella of Global Secure Access.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccess|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)| Defines whether conditional access settings are enabled for traffic profiles in Global Secure Access. Each tenant has only one conditional access settings object. |
|crossTenantAccess|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)| Defines whether the tenant restrictions cross-tenant access settings are enabled for traffic profiles in Global Secure Access. Each tenant has only one cross-tenant access settings object.|
|forwardingOptions|[microsoft.graph.networkaccess.forwardingOptions](../resources/networkaccess-forwardingOptions.md)| Determines how Microsoft 365 traffic through Global Secure Access is forwarded to Azure Front Door.|
|customBlockPage|[microsoft.graph.networkaccess.customBlockPage](../resources/networkaccess-customblockpage.md)|Custom block page settings define the end user experience when Global Secure Access blocks them from accessing a resource on the web.|

## JSON representation
The following JSON representation shows the resource type.
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

