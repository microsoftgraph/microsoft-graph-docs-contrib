---
title: "applicableDevice resource type"
description: "Represents a device for which a specific Windows update catalog entry is applicable."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# applicableDevice resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device for which a specific Windows update catalog entry is applicable. The resource also indicates whether the catalog entry is recommended for the device.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List devices](../api/windowsupdates-applicablecatalog-list-devices.md)|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|List devices for which a policy-specific catalog entry is applicable.|
|[List aggregatedDevices](../api/windowsupdates-applicablecatalogsummary-list-aggregateddevices.md)|[microsoft.graph.windowsUpdates.applicableDevice](../resources/windowsupdates-applicabledevice.md) collection|List devices included in a tenant-level applicable catalog summary.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Microsoft Entra device identifier. Read-only.|
|isRecommended|Boolean|Indicates whether the catalog entry is recommended for the device. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableDevice",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableDevice",
  "id": "String (identifier)",
  "isRecommended": "Boolean"
}
```
