---
title: "usageRight resource type"
description: "Represents the right of a user or group to use a particular set of services, as granted by the combination of their assigned licenses for the same subscribedSku."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
ms.date: 10/17/2024
---

# usageRight resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the right of a user or group to use a particular set of services, as granted by the combination of their assigned licenses for the same [subscribedSku](../resources/subscribedsku.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List for group](../api/cloudlicensing-groupcloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a group.|
|[List for user](../api/cloudlicensing-usercloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a user.|
|[Get](../api/cloudlicensing-usageright-get.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Get the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) for a [user](../resources/user.md) or [group](../resources/group.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the **usageRight** that should be treated as an opaque identifier. Inherited from [entity](../resources/entity.md). Not nullable. Read-only.|
|services|[microsoft.graph.cloudLicensing.service](../resources/cloudlicensing-service.md) collection| Information about the services associated with the **usageRight**. Not nullable. Read-only. Supports `$filter` on the **planId** property. |
|skuId|Guid| Unique identifier (GUID) for the service SKU that is equal to the **skuId** property on the related [subscribedSku](subscribedsku.md) object. Read-only. Supports `$filter`. |
|skuPartNumber|String| Unique SKU display name that is equal to the **skuPartNumber** on the related [subscribedSku](subscribedsku.md) object; for example, `AAD_Premium`. Read-only. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.usageRight",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
  "id": "String (identifier)",
  "services": [{"@odata.type": "microsoft.graph.cloudLicensing.service"}],
  "skuId": "Guid",
  "skuPartNumber": "String"
}
```
