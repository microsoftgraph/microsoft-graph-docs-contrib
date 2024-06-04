---
title: "usageRight resource type"
description: "Represents the right of a user or group to use a particular set of services."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: resourcePageType
---

# usageRight resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the right of a user or group to use a particular set of services, as granted by the combination of their assigned licenses for the same [subscribedSku](../resources/subscribedsku.md).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List user usageRights](../api/cloudlicensing-usercloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) objects granted to the user.|
|[List group usageRights](../api/cloudlicensing-groupcloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) objects granted to the group.|
|[Get user usageRight](../api/cloudlicensing-usercloudlicensing-get-usageright.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Read the properties and relationships of a [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) object granted to the user.|
|[Get group usageRight](../api/cloudlicensing-groupcloudlicensing-get-usageright.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Read the properties and relationships of a [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) object granted to the group.|
|[Get subscribedSku for user usageRight](../api/cloudlicensing-usercloudlicensing-get-usageright-subscribedsku.md)|[microsoft.graph.subscribedSku](../resources/subscribedsku.md) collection|Get the [microsoft.graph.subscribedSku](../resources/subscribedsku.md) associated with a user's [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md).|
|[Get subscribedSku for group usageRight](../api/cloudlicensing-groupcloudlicensing-get-usageright-subscribedsku.md)|[microsoft.graph.subscribedSku](../resources/subscribedsku.md) collection|Get the [microsoft.graph.subscribedSku](../resources/subscribedsku.md) associated with a group's [microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the usageRight. It should be treated as an opaque identifier. Inherited from [microsoft.graph.entity](../resources/entity.md). Not nullable. Read-only.|
|services|[microsoft.graph.cloudLicensing.service](../resources/cloudlicensing-service.md) collection| Information about the services associated with the usageRight. Not nullable. Read-only. Supports `$filter` on the **planId** and **planName** properties.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|subscribedSku|[subscribedSku](../resources/subscribedsku.md)|The [subscribedSku](../resources/subscribedsku.md) associated with this usageRight, if applicable. Nullable. Read-only.|

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
  "services": [
    {
      "@odata.type": "microsoft.graph.cloudLicensing.service"
    }
  ]
}
```
