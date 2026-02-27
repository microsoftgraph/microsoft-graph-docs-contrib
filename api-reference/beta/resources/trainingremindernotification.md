---
title: "trainingReminderNotification resource type"
description: "Represents notification content details for a training reminder during a simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# trainingReminderNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents notification content details for a training reminder during a simulation creation.

Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|Default language. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|deliveryFrequency|notificationDeliveryFrequency|Configurable frequency for the reminder email introduced during simulation creation. The possible values are: `unknown`, `weekly`, `biWeekly`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingReminderNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingReminderNotification",
  "defaultLanguage": "String",
  "deliveryFrequency": "String"
}
```
