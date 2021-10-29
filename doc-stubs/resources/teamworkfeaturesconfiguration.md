---
title: "teamworkFeaturesConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkFeaturesConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailToSendLogsAndFeedback|String|**TODO: Add Description**|
|isAutoScreenShareEnabled|Boolean|**TODO: Add Description**|
|isBluetoothBeaconingEnabled|Boolean|**TODO: Add Description**|
|isHideMeetingNamesEnabled|Boolean|**TODO: Add Description**|
|isSendLogsAndFeedbackEnabled|Boolean|**TODO: Add Description**|

## Relationships
None.

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

