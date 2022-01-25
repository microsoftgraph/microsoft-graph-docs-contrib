---
title: "teamworkSystemConfiguration resource type"
description: "Represents the details about the system configuration for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkSystemConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the system configuration for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md). Not applicable for Microsoft Teams Rooms devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTimeConfiguration|[teamworkDateTimeConfiguration](../resources/teamworkdatetimeconfiguration.md)|The date and time configurations for a device.|
|defaultPassword|String|The default password for the device. Write-Only.|
|deviceLockTimeout|Duration|The device lock timeout in seconds.|
|isDeviceLockEnabled|Boolean|`True` if the device lock is enabled.|
|isLoggingEnabled|Boolean|`True` if logging is enabled.|
|isPowerSavingEnabled|Boolean|`True` if power saving is enabled.|
|isScreenCaptureEnabled|Boolean|`True` if screen capture is enabled.|
|isSilentModeEnabled|Boolean|`True` if silent mode is enabled.|
|language|String|The language option for the device.|
|lockPin|String|The pin that unlocks the device. Write-Only.|
|loggingLevel|String|The logging level for the device.|
|networkConfiguration|[teamworkNetworkConfiguration](../resources/teamworknetworkconfiguration.md)|The network configuration for the device.|


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

