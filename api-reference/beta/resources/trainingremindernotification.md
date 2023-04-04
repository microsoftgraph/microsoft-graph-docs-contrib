---
title: "trainingReminderNotification resource type"
description: "Training reminder end user notification setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingReminderNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Training reminder end user notification setting for simulation creation.

Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|default language. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|deliveryFrequency|notificationDeliveryFrequency|Frequency.The possible values are: `unknown`, `weekly`, `biWeekly`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail. Inherited from [microsoft.graph.baseEndUserNotification](../resources/baseendusernotification.md)|

## JSON representation
The following is a JSON representation of the resource.
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

