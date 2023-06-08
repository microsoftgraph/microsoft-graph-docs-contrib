---
title: "settings resource type"
description: "Global Settings"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# settings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Global Settings


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessSettings](../api/networkaccess-settings-list-conditionalaccess.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) collection|Get the conditionalAccessSettings resources from the conditionalAccess navigation property.|
|[Create conditionalAccessSettings](../api/networkaccess-settings-post-conditionalaccess.md)|[microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Create a new conditionalAccessSettings object.|
|[List crossTenantAccessSettings](../api/networkaccess-settings-list-crosstenantaccess.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) collection|Get the crossTenantAccessSettings resources from the crossTenantAccess navigation property.|
|[Create crossTenantAccessSettings](../api/networkaccess-settings-post-crosstenantaccess.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Create a new crossTenantAccessSettings object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|conditionalAccess|[conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md)|Conditional access settings. Admin can enable or disable conditional access signaling for source IP restoration and Connectivity through NaaS. In other words, Conditional Access policy will include zero trust network access information when SignalingStatus is enabled.|
|crossTenantAccess|[crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Cross tenant access settings. For now it only contains the Network Packet Tagging Status. The network packet tagging with the user tenant ID will eventually be destined to Azure AD, and it will enforce Tenant Restrictions Policies, known as TRv2 Policies, which prevents users from exfiltrating data to tenants outside their organization|

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

