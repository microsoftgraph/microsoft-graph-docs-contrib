---
title: "teamworkFeaturesConfiguration resource type"
description: "Details of device teams client feature configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkFeaturesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device teams client feature configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailToSendLogsAndFeedback|String|Email address to send logs and feedbacks.|
|isAutoScreenShareEnabled|Boolean|Ture if autoScreenShared is enabled.|
|isBluetoothBeaconingEnabled|Boolean|True if bluetooth beaconing is enabled.|
|isHideMeetingNamesEnabled|Boolean|True if hide meeting names is enabled.|
|isSendLogsAndFeedbackEnabled|Boolean|True if send logs and feedback is enabled.|


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
  "isAutoScreenShareEnabled": "Boolean",
  "isHideMeetingNamesEnabled": "Boolean",
  "isBluetoothBeaconingEnabled": "Boolean",
  "isSendLogsAndFeedbackEnabled": "Boolean",
  "emailToSendLogsAndFeedback": "String"
}
```

