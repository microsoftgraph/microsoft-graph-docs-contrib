---
title: "mdmAppSetting resource type"
description: "Represents per-MDM application settings for a tenant, identified by a unique MDM app ID."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# mdmAppSetting resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for an MDM application within the current tenant.

Access these resources through the **mdmAppSettings** relationship of [tenantSetting](../resources/windowsupdates-tenantsetting.md). The **mdmAppId** property is the resource key and must be a nonempty GUID-formatted string. This resource supports list, create, get, and update operations.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mdmAppSettings](../api/windowsupdates-tenantsetting-list-mdmappsettings.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) collection|Get a list of the mdmAppSetting objects and their properties.|
|[Create MDM app setting](../api/windowsupdates-tenantsetting-post-mdmappsettings.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md)|Create a new mdmAppSetting object.|
|[Get MDM app setting](../api/windowsupdates-mdmappsetting-get.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md)|Read the properties and relationships of [microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) object.|
|[Update MDM app setting](../api/windowsupdates-mdmappsetting-update.md)|[microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md)|Update the properties of a mdmAppSetting object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isHotpatchEnabled|Boolean|Whether hotpatch is enabled for this MDM application. The default is `true`.|
|mdmAppId|String|The unique identifier of the MDM application as a GUID-formatted string. This property is the resource key and can't be updated.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "mdmAppId",
  "@odata.type": "microsoft.graph.windowsUpdates.mdmAppSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.mdmAppSetting",
  "mdmAppId": "String (identifier)",
  "isHotpatchEnabled": "Boolean"
}
```
