---
title: "unifiedStorageQuota resource type"
description: The unifiedStorageQuota resource provides an aggregate view of a user's quota information across multiple services.
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.prod: "unified-storage-quota"
doc_type: resourcePageType
---

# unifiedStorageQuota resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The unifiedStorageQuota resource providers an aggregate view of a user's quota information across multiple services.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get unifiedStorageQuota](../api/unifiedstoragequota-get.md)|[unifiedStorageQuota](../resources/unifiedstoragequota.md)|Read the properties and relationships of an [unifiedStorageQuota](../resources/unifiedstoragequota.md) object.|
|[List services](../api/servicestoragequotabreakdown-list.md)|[serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) collection|Get the serviceStorageQuotaBreakdown resources from the services navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|the user id|
|manageWebUrl|String| A URL that can be used in a browser to manage the breakdown. Read-only. |
|remaining|Int64| Total space remaining before reaching the quota limit, in bytes. |
|state|usqState| Enumeration value that indicates the state of the storage space. |
|total|Int64| Total allowed storage space, in bytes. |
|used|Int64| Total space used, in bytes. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|services|[serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) collection| The of services contributing to the user's quota usage. |

### usqState values
| Value          |
| :------------- |
| normal         |
| nearing        |
| critical       |
| full           |
| overLimit      |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedStorageQuota",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedStorageQuota",
  "id": "String",
  "manageWebUrl": "String",
  "remaining": "Integer",
  "state": "String",
  "total": "Integer",
  "used": "Integer"
}
```

