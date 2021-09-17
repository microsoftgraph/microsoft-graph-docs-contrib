---
title: "bookingService resource type"
description: "Represents a particular service offered by a booking business."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookingService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a particular service offered by a booking business.


Inherits from [bookingNamedEntity](../resources/bookingnamedentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingServices](../api/bookingservice-list.md)|[bookingService](../resources/bookingservice.md) collection|Get a list of the [bookingService](../resources/bookingservice.md) objects and their properties.|
|[Create bookingService](../api/bookingservice-create.md)|[bookingService](../resources/bookingservice.md)|Create a new [bookingService](../resources/bookingservice.md) object.|
|[Get bookingService](../api/bookingservice-get.md)|[bookingService](../resources/bookingservice.md)|Read the properties and relationships of a [bookingService](../resources/bookingservice.md) object.|
|[Update bookingService](../api/bookingservice-update.md)|[bookingService](../resources/bookingservice.md)|Update the properties of a [bookingService](../resources/bookingservice.md) object.|
|[Delete bookingService](../api/bookingservice-delete.md)|None|Deletes a [bookingService](../resources/bookingservice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|String|**TODO: Add Description**|
|defaultDuration|Duration|**TODO: Add Description**|
|defaultLocation|[location](../resources/location.md)|**TODO: Add Description**|
|defaultPrice|Double|**TODO: Add Description**|
|defaultPriceType|bookingPriceType|**TODO: Add Description**. The possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|defaultReminders|[bookingReminder](../resources/bookingreminder.md) collection|The default reminders set in an appointment of this service.
The value of this property is only available when reading an individual booking service by id.|
|description|String|**TODO: Add Description**|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|isHiddenFromCustomers|Boolean|**TODO: Add Description**|
|isLocationOnline|Boolean|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|postBuffer|Duration|**TODO: Add Description**|
|preBuffer|Duration|**TODO: Add Description**|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|**TODO: Add Description**|
|smsNotificationsEnabled|Boolean|**TODO: Add Description**|
|staffMemberIds|String collection|**TODO: Add Description**|
|webUrl|String|The URL of the booking service.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingService",
  "baseType": "microsoft.bookings.api.bookingNamedEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingService",
  "id": "String (identifier)",
  "displayName": "String",
  "defaultDuration": "String (duration)",
  "defaultLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "defaultPrice": "Double",
  "defaultPriceType": "String",
  "defaultReminders": [
    {
      "@odata.type": "microsoft.graph.bookingReminder"
    }
  ],
  "description": "String",
  "isHiddenFromCustomers": "Boolean",
  "notes": "String",
  "additionalInformation": "String",
  "preBuffer": "String (duration)",
  "postBuffer": "String (duration)",
  "schedulingPolicy": {
    "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
  },
  "staffMemberIds": [
    "String"
  ],
  "isLocationOnline": "Boolean",
  "smsNotificationsEnabled": "Boolean",
  "webUrl": "String"
}
```

