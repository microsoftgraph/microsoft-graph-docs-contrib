---
title: "driverUpdateDeviceStatus resource type"
description: "Represents the latest rollout status of a driver update for a device in a Windows Autopatch ring."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# driverUpdateDeviceStatus resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the latest rollout status of a driver update for a device in a Windows Autopatch ring.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceStatuses](../api/windowsupdates-driverupdatereport-list-devicestatuses.md)|[microsoft.graph.windowsUpdates.driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md) collection|List per-device rollout statuses for a driver update.|
|[Get driver update device status](../api/windowsupdates-driverupdatedevicestatus-get.md)|[microsoft.graph.windowsUpdates.driverUpdateDeviceStatus](../resources/windowsupdates-driverupdatedevicestatus.md)|Read a per-device driver update rollout status.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aadDeviceId|String|The Microsoft Entra identifier of the device. Read-only.|
|clientState|[windowsUpdates.deviceClientState](../resources/enums-windowsupdates.md#deviceclientstate-values)|The rollout state reported by the device. The possible values are: `offering`, `onHold`, `installing`, `installed`, `cancelled`, `uninstalling`, `uninstalled`, `notOffering`, `unknownFutureValue`. Read-only.|
|clientSubstate|[windowsUpdates.deviceClientSubstate](../resources/enums-windowsupdates.md#deviceclientsubstate-values)|The detailed rollout substate reported by the device. The possible values are: `deferred`, `offerReady`, `paused`, `offerReceived`, `downloadStart`, `downloadComplete`, `installStart`, `installComplete`, `restartRequired`, `restartInitiated`, `restartComplete`, `updateInstalled`, `rollbackComplete`, `userCancelled`, `deviceCancelled`, `uninstall`, `rollback`, `updateUninstalled`, `notSupported`, `previousUpdateInProgress`, `unknownFutureValue`. Read-only.|
|deviceName|String|The device name. Read-only.|
|id|String|The composite identifier for the driver update status. Read-only.|
|lastEventDateTime|DateTimeOffset|The date and time of the latest status event. Read-only.|
|policyId|String|The identifier of the driver update policy. Read-only.|
|policyName|String|The display name of the driver update policy. Read-only.|
|ringId|String|The identifier of the Windows Autopatch ring. Read-only.|
|ringName|String|The display name of the Windows Autopatch ring. Read-only.|
|serviceState|[windowsUpdates.deviceServiceState](../resources/enums-windowsupdates.md#deviceservicestate-values)|The rollout state maintained by the service. The possible values are: `unknown`, `pending`, `offering`, `onHold`, `cancelled`, `notOffering`, `unknownFutureValue`. Read-only.|
|serviceSubstate|[windowsUpdates.deviceServiceSubstate](../resources/enums-windowsupdates.md#deviceservicesubstate-values)|The detailed rollout substate maintained by the service. The possible values are: `unknown`, `scheduled`, `offerReady`, `adminPaused`, `adminCancelled`, `removedFromDeployment`, `notOffering`, `unknownFutureValue`. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateDeviceStatus",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateDeviceStatus",
  "aadDeviceId": "String",
  "clientState": "String",
  "clientSubstate": "String",
  "deviceName": "String",
  "id": "String (identifier)",
  "lastEventDateTime": "String (timestamp)",
  "policyId": "String",
  "policyName": "String",
  "ringId": "String",
  "ringName": "String",
  "serviceState": "String",
  "serviceSubstate": "String"
}
```
