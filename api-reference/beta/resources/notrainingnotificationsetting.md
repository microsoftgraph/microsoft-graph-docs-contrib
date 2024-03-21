---
title: "noTrainingNotificationSetting resource type"
description: "Represents a notification setting when no training is selected on a simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# noTrainingNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a notification setting when no training is selected on a simulation creation.

Inherits from [endUserNotificationSetting](../resources/endusernotificationsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|Notification preference. Possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|Notification for users who reported the phish email. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|settingType|endUserNotificationSettingType|The setting type. Possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|simulationNotification|[simulationNotification](../resources/simulationnotification.md)|The notification for the user who is part of the simulation.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.noTrainingNotificationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.noTrainingNotificationSetting",
  "notificationPreference": "String",
  "positiveReinforcement": {"@odata.type": "microsoft.graph.positiveReinforcementNotification"},
  "settingType": "String",
  "simulationNotification": {"@odata.type": "microsoft.graph.simulationNotification"}
}
```
