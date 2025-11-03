---
title: "sharePointIdentityMapping resource type"
description: "Represents a base identity mapping for cross-organization migration scenarios."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointIdentityMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base identity mapping for cross-organization (tenant-to-tenant) migration scenarios. This abstract type serves as the parent for specific identity mapping types for users and groups.


Inherits from [entity](../resources/entity.md).


## Methods
None. This is an abstract base type. See [sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) and [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) for specific implementations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the identity mapping. Base64-encoded string. Generated automatically. Inherited from [entity](../resources/entity.md).|
|sourceOrganizationId|Guid|The unique identifier of the source organization in the migration.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointIdentityMapping",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointIdentityMapping",
  "id": "String (identifier)",
  "sourceOrganizationId": "Guid"
}
```

