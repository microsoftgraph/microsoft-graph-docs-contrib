---
title: "microsoftAppsFileStorageContainerGeoUsage resource type"
description: "Represents geo-level storage usage data for SharePoint Embedded file storage containers."
author: "anjkumari"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# microsoftAppsFileStorageContainerGeoUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents geo-level storage usage data for SharePoint Embedded file storage containers.

This resource provides aggregated metrics for a specific geographic location, including storage used and container count, with the ability to expand to app-level details.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activeContainerCount|Int64|The number of active file storage containers in this geographic location.|
|activeStorageUsedInBytes|Int64|The storage used in bytes for active file storage containers in this geographic location.|
|dataLocationCode|String|The geographic location code (for example, `NAM` for North America, `EUR` for Europe).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|usageByApp|[microsoftAppsFileStorageContainerAppUsage](../resources/microsoftappsfilestoragecontainerappusage.md) collection|Storage usage data broken down by application within this geographic location. Expandable using `$expand=usageByApp`.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "dataLocationCode",
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
  "dataLocationCode": "String (identifier)",
  "activeStorageUsedInBytes": "Int64",
  "activeContainerCount": "Int64",
  "usageByApp": [{"@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage"}]
}
```
