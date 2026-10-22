---
title: "driverUpdateReport resource type"
description: "Represents a driver update available in a tenant and its per-device rollout status."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# driverUpdateReport resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a driver update available in a tenant, aggregated across Windows Autopatch driver update policies. Use the **deviceStatuses** relationship to inspect the latest rollout status for affected devices.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List drivers](../api/windowsupdates-updatedata-list-drivers.md)|[microsoft.graph.windowsUpdates.driverUpdateReport](../resources/windowsupdates-driverupdatereport.md) collection|List driver updates available in the tenant.|
|[Get driver update report](../api/windowsupdates-driverupdatereport-get.md)|[microsoft.graph.windowsUpdates.driverUpdateReport](../resources/windowsupdates-driverupdatereport.md)|Read a driver update report.|
|[List deviceStatuses](../api/windowsupdates-driverupdatereport-list-devicestatuses.md)|[microsoft.graph.windowsUpdates.driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md) collection|List per-device rollout statuses for the driver update.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|class|String|The device class targeted by the driver update. Read-only.|
|displayName|String|The display name of the driver update. Read-only.|
|id|String|The catalog entry identifier of the driver update. Read-only.|
|manufacturer|String|The manufacturer of the driver update. Read-only.|
|releaseDateTime|DateTimeOffset|The date and time when the driver update was released. Read-only.|
|version|String|The driver version. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceStatuses|[microsoft.graph.windowsUpdates.driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md) collection|The latest rollout statuses for devices associated with the driver update.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateReport",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateReport",
  "class": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "manufacturer": "String",
  "releaseDateTime": "String (timestamp)",
  "version": "String"
}
```
