---
title: "positiveReinforcementNotification resource type"
description: "Represents positive reinforcement settings for an end user notification during simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# positiveReinforcementNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents positive reinforcement settings for an end user notification during simulation creation. Admins can configure the notification details for a user who identifies the phish message successfully.

Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|Default language. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|deliveryPreference|notificationDeliveryPreference|Delivery preference. Possible values are: `unknown`, `deliverImmedietly`, `deliverAfterCampaignEnd`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.positiveReinforcementNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.positiveReinforcementNotification",
  "defaultLanguage": "String",
  "deliveryPreference": "String"
}
```
