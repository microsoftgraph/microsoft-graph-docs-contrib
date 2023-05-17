---
title: "unifiedStorageQuota resource type"
description: Provides an aggregate view of a user's quota information across multiple services.
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.prod: files
doc_type: resourcePageType
---

# unifiedStorageQuota resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides an aggregate view of a user's quota information across multiple services.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get unifiedStorageQuota](../api/unifiedstoragequota-get.md)|[unifiedStorageQuota](../resources/unifiedstoragequota.md)|Read the properties and relationships of a [unifiedStorageQuota](../resources/unifiedstoragequota.md) object.|
|[List serviceStorageQuotaBreakdown](../api/unifiedstoragequota-list-services.md)| [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) collection|Get the list of services in a **serviceStorageQuotaBreakdown**.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The user IF.|
|manageWebUrl|String| A URL that can be used in a browser to manage the breakdown. Read-only. |
|remaining|Int64| Total space remaining before reaching the quota limit in bytes. |
|state|usqState| Indicates the state of the storage space. The possible values are: `normal`, `nearing`, `critical`, `full`, and `overLimit`.|
|total|Int64| Total allowed storage space in bytes. |
|used|Int64| Total space used in bytes. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|services|[serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) collection| The breakdown of services contributing to the user's quota usage. |


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
  "state": "normal | nearing | critical | full | overLimit",
  "total": "Integer",
  "used": "Integer"
}
```

