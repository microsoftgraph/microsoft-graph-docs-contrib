---
title: "noTrainingNotificationSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# noTrainingNotificationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [endUserNotificationSetting](../resources/endusernotificationsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notificationPreference|endUserNotificationPreference|**TODO: Add Description** Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `microsoft`, `custom`, `unknownFutureValue`.|
|positiveReinforcement|[positiveReinforcementNotification](../resources/positivereinforcementnotification.md)|**TODO: Add Description** Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).|
|settingType|endUserNotificationSettingType|**TODO: Add Description** Inherited from [endUserNotificationSetting](../resources/endusernotificationsetting.md).The possible values are: `unknown`, `noTraining`, `trainingSelected`, `noNotification`, `unknownFutureValue`.|
|simulationNotification|[simulationNotification](../resources/simulationnotification.md)|**TODO: Add Description**|

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

