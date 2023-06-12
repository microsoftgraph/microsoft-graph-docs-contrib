---
title: "crossTenantAccessSettings resource type"
description: "Cross tenant access settings. For now it only contains the Network Packet Tagging Status. The network packet tagging with the user tenant ID will eventually be destined to Azure AD, and it will enforce Tenant Restrictions Policies, known as TRv2 Policies, which prevents users from exfiltrating data to tenants outside their organization"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# crossTenantAccessSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cross tenant access settings. For now it only contains the Network Packet Tagging Status. The network packet tagging with the user tenant ID will eventually be destined to Azure AD, and it will enforce Tenant Restrictions Policies, known as TRv2 Policies, which prevents users from exfiltrating data to tenants outside their organization


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantAccessSettings](../api/networkaccess-settings-list-crosstenantaccess.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) collection|Get a list of the [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) objects and their properties.|
|[Create crossTenantAccessSettings](../api/networkaccess-settings-post-crosstenantaccess.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Create a new [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|
|[Get crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-get.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|
|[Update crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-update.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Update the properties of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|
|[Delete crossTenantAccessSettings](../api/networkaccess-settings-delete-crosstenantaccess.md)|None|Delete a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|networkPacketTaggingStatus|microsoft.graph.networkaccess.status|Determines if the service inserts a header with the user tenant ID into network traffic	.The possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.crossTenantAccessSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.crossTenantAccessSettings",
  "id": "String (identifier)",
  "networkPacketTaggingStatus": "String"
}
```

