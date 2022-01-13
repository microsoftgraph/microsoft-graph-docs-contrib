---
title: "teamworkSystemConfiguration resource type"
description: "Details of device system configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkSystemConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of system configuration of a [teamworkDevice](../resources/teamworkdevice.md). This detail is not applicable for Microsoft Teams Rooms devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTimeConfiguration|[teamworkDateTimeConfiguration](../resources/teamworkdatetimeconfiguration.md)|Date & Time configurations for a device.|
|defaultPassword|String|Default password for the device. This is write-only.|
|deviceLockTimeout|Duration|Device lock timeout in seconds.|
|isDeviceLockEnabled|Boolean|True if device lock is enabled.|
|isLoggingEnabled|Boolean|True if logging is enabled.|
|isPowerSavingEnabled|Boolean|True if power saving is enabled.|
|isScreenCaptureEnabled|Boolean|True if screen capture is enabled.|
|isSilentModeEnabled|Boolean|True if silent mode is enabled.|
|language|String|Language option for the device.|
|lockPin|String|Lockpin for the device. This is write-only.|
|loggingLevel|String|Logging level for the device.|
|networkConfiguration|[teamworkNetworkConfiguration](../resources/teamworknetworkconfiguration.md)|Network configuration for a device.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSystemConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSystemConfiguration",
  "dateTimeConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDateTimeConfiguration"
  },
  "defaultPassword": "String",
  "deviceLockTimeout": "String (duration)",
  "isDeviceLockEnabled": "Boolean",
  "isLoggingEnabled": "Boolean",
  "isPowerSavingEnabled": "Boolean",
  "isScreenCaptureEnabled": "Boolean",
  "isSilentModeEnabled": "Boolean",
  "language": "String",
  "lockPin": "String",
  "loggingLevel": "String",
  "networkConfiguration": {
    "@odata.type": "microsoft.graph.teamworkNetworkConfiguration"
  }
}
```

