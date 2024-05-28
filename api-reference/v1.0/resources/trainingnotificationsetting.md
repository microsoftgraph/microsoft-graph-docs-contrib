---
title: "trainingNotificationSetting resource type"
description: "Represents a training notification setting."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# trainingNotificationSetting resource type

Namespace: microsoft.graph

Represents the settings associated with a training notification.

Inherits from [endUserNotificationSetting](../resources/endusernotificationsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|Notification preference. Possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|Positive reinforcement details. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|settingType|endUserNotificationSettingType|Setting type. Possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`. Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|trainingAssignment|[baseEndUserNotification](../resources/baseendusernotification.md)|Training assignment details.|
|trainingReminder|[trainingReminderNotification](../resources/trainingremindernotification.md)|Training reminder details.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingNotificationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingNotificationSetting",
  "notificationPreference": "String",
  "positiveReinforcement": {"@odata.type": "microsoft.graph.positiveReinforcementNotification"},
  "settingType": "String",
  "trainingAssignment": {"@odata.type": "microsoft.graph.baseEndUserNotification"},
  "trainingReminder": {"@odata.type": "microsoft.graph.trainingReminderNotification"}
}
```
