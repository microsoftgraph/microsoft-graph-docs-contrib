---
title: "network access settings resource type"
description: "Global Secure Access settings for the tenant."
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
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccess|[conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Conditional access settings. You can enable or disable conditional access signaling for source IP restoration and connectivity through NaaS. In other words, Conditional Access policy will include zero trust network access information when signalingStatus is enabled.|
|crossTenantAccess|[crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Cross tenant access settings. Currently defines the network packet tagging status. The network packet tagging with the user tenant ID will eventually be destined to Azure AD, and it will enforce Tenant Restrictions Policies, known as TRv2 Policies, which prevents users from exfiltrating data to tenants outside their organization.|

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

