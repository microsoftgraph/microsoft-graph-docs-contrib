---
title: "connectivity resource type"
description: "Represents all the connectivity components in the Global Secure Access services."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 03/27/2024
---

# connectivity resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all the connectivity components in Global Secure Access services.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this resource. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|branches|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) collection|The locations for connectivity. **DEPRECATED AND TO BE RETIRED SOON. Use the remoteNetwork relationship and its associated APIs instead.**|
|remoteNetworks|[microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) collection|The locations, such as branches, that are connected to Global Secure Access services through an IPsec tunnel.|

## JSON representation
Here's is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.connectivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.connectivity",
  "id": "String (identifier)"  
}
```

