---
title: "noTrainingNotificationSetting resource type"
title: "No notification setting for simulation creation."
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
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|**TODO: Add Description** Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|notificationPreference|endUserNotificationPreference|Notification preferance. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`.|
|settingType|endUserNotificationSettingType|Setting type. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`.|
|simulationNotification|[simulationNotification](../resources/simulationnotification.md)|Notification for user part of simulation.|

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

