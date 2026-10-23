---
title: "tenantSetting resource type"
description: "Represents tenant-level settings for Windows Autopatch updates and the defaults used when no settings exist."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# tenantSetting resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-level settings for Windows Autopatch updates.

Access this singleton at `/admin/windows/updates/tenantSettings`; don't append a tenant ID. Use GET to read the settings and PATCH to update them. When no settings have been saved, the GET operation returns the default settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenant settings](../api/windowsupdates-tenantsetting-get.md)|[microsoft.graph.windowsUpdates.tenantSetting](../resources/windowsupdates-tenantsetting.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.tenantSetting](../resources/windowsupdates-tenantsetting.md) object.|
|[Update tenant settings](../api/windowsupdates-tenantsetting-update.md)|[microsoft.graph.windowsUpdates.tenantSetting](../resources/windowsupdates-tenantsetting.md)|Update the properties of a tenantSetting object.|
|[List mdmAppSettings](../api/windowsupdates-tenantsetting-list-mdmappsettings.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) collection|Get the MDM application settings for the current tenant.|
|[Create MDM app setting](../api/windowsupdates-tenantsetting-post-mdmappsettings.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md)|Create a new mdmAppSetting object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|areDataProcessorServiceForWindowsFeaturesEnabled|Boolean|Whether Data Processor Service for Windows (DPSW) features are enabled for this tenant. The default is `false`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mdmAppSettings|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) collection|The per-MDM-application settings for the current tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.tenantSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.tenantSetting",
  "areDataProcessorServiceForWindowsFeaturesEnabled": "Boolean"
}
```
