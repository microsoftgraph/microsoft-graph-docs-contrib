---
title: "positiveReinforcementNotification resource type"
description: "Positive reinforcement end user notification setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# positiveReinforcementNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Positive reinforcement end user notification setting for simulation creation.

Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|Default language. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|deliveryPreference|notificationDeliveryPreference|delivery preferance.The possible values are: `unknown`, `deliverImmedietly`, `deliverAfterCampaignEnd`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail. Inherited from [microsoft.graph.baseEndUserNotification](../resources/baseendusernotification.md)|

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

