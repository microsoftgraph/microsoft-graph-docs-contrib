---
title: "deviceProfile resource type"
description: "Represents read-only profile and Windows servicing information for a device managed by Windows Autopatch."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# deviceProfile resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents read-only profile and Windows servicing information for a device managed by Windows Autopatch.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceProfiles](../api/windowsupdates-updatedata-list-deviceprofiles.md)|[microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md) collection|List device profiles and their Windows servicing information.|
|[Get device profile](../api/windowsupdates-deviceprofile-get.md)|[microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md)|Read the properties of a device profile.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureAdDeviceId|String|The Microsoft Entra device identifier. Read-only.|
|deviceModel|String|The hardware model of the device. Read-only.|
|deviceName|String|The device name. Read-only.|
|hotpatchReadiness|[windowsUpdates.hotpatchReadiness](../resources/enums-windowsupdates.md#hotpatchreadiness-values)|The device's readiness for hotpatch updates. The possible values are: `ready`, `notReady`, `unknownFutureValue`. Read-only.|
|id|String|The unique identifier for the device profile. Read-only.|
|osBuild|String|The Windows build installed on the device. Read-only.|
|osStatus|[windowsUpdates.osStatus](../resources/enums-windowsupdates.md#osstatus-values)|The servicing status of the device's Windows version. The possible values are: `endOfServicing`, `inServicing`, `nearEndOfServicing`, `unknownFutureValue`. Read-only.|
|osVersion|String|The Windows version installed on the device. Read-only.|
|serialNumber|String|The device serial number. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.deviceProfile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deviceProfile",
  "azureAdDeviceId": "String",
  "deviceModel": "String",
  "deviceName": "String",
  "hotpatchReadiness": "String",
  "id": "String (identifier)",
  "osBuild": "String",
  "osStatus": "String",
  "osVersion": "String",
  "serialNumber": "String"
}
```
