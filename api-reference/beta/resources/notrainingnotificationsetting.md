---
title: "noTrainingNotificationSetting resource type"
description: "Details required for oAuth technique"
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# noTrainingNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

No notification setting for simulation creation.

Inherits from [endUserNotificationSetting](../resources/endusernotificationsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|Notification preference. Possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|**TODO: Add Description** Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
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
  "settingType": "String",
  "positiveReinforcement": {
    "@odata.type": "microsoft.graph.positiveReinforcementNotification"
  },
  "simulationNotification": {
    "@odata.type": "microsoft.graph.simulationNotification"
  }
}
```
