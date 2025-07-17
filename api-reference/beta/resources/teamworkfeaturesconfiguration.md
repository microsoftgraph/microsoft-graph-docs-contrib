---
title: "teamworkFeaturesConfiguration resource type"
description: "Represents the Microsoft Teams client configuration details for a Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkFeaturesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Teams client configuration details for a Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailToSendLogsAndFeedback|String|Email address to send logs and feedback.|
|isAutoScreenShareEnabled|Boolean|`True` if auto screen shared is enabled.|
|isBluetoothBeaconingEnabled|Boolean|`True` if Bluetooth beaconing is enabled.|
|isHideMeetingNamesEnabled|Boolean|`True` if hiding meeting names is enabled.|
|isSendLogsAndFeedbackEnabled|Boolean|`True` if sending logs and feedback is enabled.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

