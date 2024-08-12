---
title: "groupCloudLicensing resource type"
description: "Represents a group's relationships to Cloud Licensing resources."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: resourcePageType
---

# groupCloudLicensing resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group's relationships to Cloud Licensing resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List usageRights](../api/cloudlicensing-groupcloudlicensing-list-usagerights.md)|[usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to the group.|
|[Get usageRight](../api/cloudlicensing-groupcloudlicensing-get-usageright.md)|[usageRight](../resources/cloudlicensing-usageright.md)|Read the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) object granted to the group.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|usageRights|[usageRight](../resources/cloudlicensing-usageright.md) collection|The rights that all direct members of the group have to use various services, granted by the combination of its assigned licenses.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudLicensing.groupCloudLicensing"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.groupCloudLicensing"
}
```
