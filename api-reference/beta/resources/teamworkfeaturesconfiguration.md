---
title: "teamworkFeaturesConfiguration resource type"
description: "Represents the details about the configuration of Microsoft Teams client features for a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkFeaturesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the configuration of Microsoft Teams client features for a [teamworkDevice](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailToSendLogsAndFeedback|String|Email address to send logs and feedback.|
|isAutoScreenShareEnabled|Boolean|`True` if auto screen shared is enabled.|
|isBluetoothBeaconingEnabled|Boolean|`True` if Bluetooth beaconing is enabled.|
|isHideMeetingNamesEnabled|Boolean|`True` if hiding meeting names is enabled.|
|isSendLogsAndFeedbackEnabled|Boolean|`True` if sending logs and feedback is enabled.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkFeaturesConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkFeaturesConfiguration",
  "emailToSendLogsAndFeedback": "String",
  "isAutoScreenShareEnabled": "Boolean",
  "isBluetoothBeaconingEnabled": "Boolean",
  "isHideMeetingNamesEnabled": "Boolean",
  "isSendLogsAndFeedbackEnabled": "Boolean"
}
```

