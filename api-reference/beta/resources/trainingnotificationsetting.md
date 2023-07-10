---
title: "trainingNotificationSetting resource type"
description: "Represents trainign notification setting."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents trainign notification setting.

Inherits from [endUserNotificationSetting](../resources/endusernotificationsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|Notification preference. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`.|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|Positive reinforcement details. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|settingType|endUserNotificationSettingType|Settign type. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`.|
|trainingAssignment|[baseEndUserNotification](../resources/baseendusernotification.md)|Training assignment details.|
|trainingReminder|[trainingReminderNotification](../resources/trainingremindernotification.md)|Training reminder details.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingNotificationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingNotificationSetting",
  "notificationPreference": "String",
  "settingType": "String",
  "positiveReinforcement": {
    "@odata.type": "microsoft.graph.positiveReinforcementNotification"
  },
  "trainingAssignment": {
    "@odata.type": "microsoft.graph.baseEndUserNotification"
  },
  "trainingReminder": {
    "@odata.type": "microsoft.graph.trainingReminderNotification"
  }
}
```

