---
title: "crossTenantAccessSettings resource type"
description: "A tenant's cross tenant access settings define Universal tenant restrictions version 2. The universal tenant restrictions version 2 offer coverage for tagging all traffic regardless of the browser or operating system used on the device, support for branch connectivity and direct from device connectivity, and native integration with Microsoft 365 and Azure Active Directory."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# crossTenantAccessSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A tenant's cross tenant access settings define Universal tenant restrictions version 2. The universal tenant restrictions version 2 offer coverage for tagging all traffic regardless of the browser or operating system used on the device, support for branch connectivity and direct from device connectivity, and native integration with Microsoft 365 and Azure Active Directory.

For more information about cross-tenant access settings, see [Universal tenant restrictions](https://github.com/azure/global-secure-access/how-to-universal-tenant-restrictions)."


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-get.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|
|[Update crossTenantAccessSettings](../api/networkaccess-crosstenantaccesssettings-update.md)|[microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md)|Update the properties of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.|

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

