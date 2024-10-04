---
title: "groupCloudLicensing resource type"
description: "Represents the relationships of a group to cloud licensing resources."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# groupCloudLicensing resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the relationships of a group to cloud licensing resources.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|usageRights|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|The rights that all direct members of the group have to use various services, granted by the combination of its assigned licenses.|

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
