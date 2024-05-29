---
title: "endUserNotificationSetting resource type"
description: "Represents an end user notification setting provided by an administrator during a simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endUserNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an end user notification setting provided by an administrator during a simulation creation.

Base type of [noTrainingNotificationSetting](../resources/notrainingnotificationsetting.md) and [trainingNotificationSetting](../resources/trainingnotificationsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|Notification preference. Possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`.|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|Positive reinforcement detail.|
|settingType|endUserNotificationSettingType|End user notification type. Possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.endUserNotificationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.endUserNotificationSetting",
  "notificationPreference": "String",
  "positiveReinforcement": {"@odata.type": "microsoft.graph.positiveReinforcementNotification"},
  "settingType": "String"
}
```
