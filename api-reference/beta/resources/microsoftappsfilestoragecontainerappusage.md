---
title: "microsoftAppsFileStorageContainerAppUsage resource type"
description: "Represents app-level storage usage data for SharePoint Embedded file storage containers."
author: "anjkumari"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# microsoftAppsFileStorageContainerAppUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents app-level storage usage data for SharePoint Embedded file storage containers.

This resource provides metrics for a specific application within a geographic location, including the app identifier, display name, storage used, and container count.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activeContainerCount|Int64|The number of active file storage containers for this application.|
|activeStorageUsedInBytes|Int64|The storage used in bytes for active file storage containers for this application.|
|appId|String|The unique identifier (GUID) of the Microsoft application.|
|displayName|String|The display name of the Microsoft application (for example, `Loop`, `Designer`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "appId",
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
  "appId": "String (identifier)",
  "displayName": "String",
  "activeStorageUsedInBytes": "Int64",
  "activeContainerCount": "Int64"
}
```
