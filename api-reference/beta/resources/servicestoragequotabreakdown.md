---
title: "serviceStorageQuotaBreakdown resource type"
description: "Represents a proportion of the unified storage quota associated with a specific service."
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.subservice: onedrive
doc_type: resourcePageType
ms.date: 07/22/2024
---

# serviceStorageQuotaBreakdown resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a proportion of the unified storage quota associated with a specific service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/unifiedstoragequota-list-services.md)| [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) collection|Get a list of services in the serviceStorageQuotaBreakdown.|
|[Get](../api/servicestoragequotabreakdown-get.md)|[serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md)|Read the properties and relationships of a [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The service breakdown name displayed to users. Localized. Read-only.|
|id|String|The service breakdown id. Read-only.|
|manageWebUrl|String|A URL that can be used in a browser to manage the service breakdown. Read-only.|
|used|Int64|The number of bytes this service breakdown is consuming. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceStorageQuotaBreakdown",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceStorageQuotaBreakdown",
  "id": "String (identifier)",
  "displayName": "String",
  "manageWebUrl": "String",
  "used": "Integer"
}
```

