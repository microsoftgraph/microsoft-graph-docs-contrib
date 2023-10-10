---
title: "crossTenantAccessSettings resource type"
description: "The cross tenant access settings of a tenant determine the Universal tenant restrictions version 2. These restrictions provide comprehensive coverage by tagging all traffic, irrespective of the device's browser or operating system, facilitate branch and direct from device connectivity, and integrate natively with Microsoft 365 and Azure Active Directory."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# crossTenantAccessSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The cross tenant access settings of a tenant determine the Universal tenant restrictions version 2. These restrictions provide comprehensive coverage by tagging all traffic, irrespective of the device's browser or operating system, facilitate branch and direct from device connectivity, and integrate natively with Microsoft 365 and Azure Active Directory.

For more information about cross-tenant access settings, see [Universal tenant restrictions](https://github.com/azure/global-secure-access/how-to-universal-tenant-restrictions).


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-get.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|
|[Update crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-update.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Update the properties of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|networkPacketTaggingStatus|microsoft.graph.networkaccess.status|Determines if a header with the user tenant ID is inserted into the network traffic.	.The possible values are: `enabled`, `disabled`.|

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

