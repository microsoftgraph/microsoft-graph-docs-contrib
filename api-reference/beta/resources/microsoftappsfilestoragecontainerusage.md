---
title: "microsoftAppsFileStorageContainerUsage resource type"
description: "Represents tenant-level storage usage data for SharePoint Embedded file storage containers."
author: "anjkumari"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# microsoftAppsFileStorageContainerUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-level storage usage data for SharePoint Embedded file storage containers.

This resource provides aggregated metrics including total storage used and container count across the tenant, with the ability to expand to geo-level and app-level details.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get SharePoint Embedded file storage container usage summary](../api/reportroot-getmicrosoftappsfilestoragecontainerusagesummary.md)|[microsoftAppsFileStorageContainerUsage](../resources/microsoftappsfilestoragecontainerusage.md)|Get storage usage data for SharePoint Embedded file storage containers in a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the usage summary. The value is always `microsoftAppsFileStorageContainerUsageSummary`. Inherits from [entity](../resources/entity.md).|
|totalActiveContainerCount|Int64|The total number of active file storage containers across the tenant.|
|totalActiveStorageUsedInBytes|Int64|The total storage used in bytes across all active file storage containers in the tenant.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|usageByDataLocation|[microsoftAppsFileStorageContainerGeoUsage](../resources/microsoftappsfilestoragecontainergeousage.md) collection|Storage usage data broken down by geographic location. Expandable using `$expand=usageByDataLocation`.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerUsage",
  "id": "String (identifier)",
  "totalActiveStorageUsedInBytes": "Int64",
  "totalActiveContainerCount": "Int64",
  "usageByDataLocation": [{"@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage"}]
}
```
