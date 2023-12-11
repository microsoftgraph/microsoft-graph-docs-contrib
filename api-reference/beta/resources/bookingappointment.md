---
title: "bookingAppointment resource type"
description: "Represents a customer appointment for a bookingService, performed by a set of staff members, provided by a Microsoft Bookings business."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingAppointment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingAppointment objects](../api/bookingbusiness-list-appointments.md)|[bookingAppointment](../resources/bookingappointment.md) collection|Get a list of the [bookingAppointment](../resources/bookingappointment.md) objects and their properties.|
|[Create bookingAppointment](../api/bookingbusiness-post-appointments.md)|[bookingAppointment](../resources/bookingappointment.md)|Create a new [bookingAppointment](../resources/bookingappointment.md) object.|
|[Get bookingAppointment](../api/bookingappointment-get.md)|[bookingAppointment](../resources/bookingappointment.md)|Read the properties and relationships of a [bookingAppointment](../resources/bookingappointment.md) object.|
|[Update bookingAppointment](../api/bookingappointment-update.md)|[bookingAppointment](../resources/bookingappointment.md)|Update the properties of a [bookingAppointment](../resources/bookingappointment.md) object.|
|[Delete bookingAppointment](../api/bookingbusiness-delete-appointments.md)|None|Delete a [bookingAppointment](../resources/bookingappointment.md) object.|
|[cancel](../api/bookingappointment-cancel.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|String|**TODO: Add Description**|
|anonymousJoinWebUrl|String|**TODO: Add Description**|
|appointmentLabel|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customerEmailAddress|String|**TODO: Add Description**|
|customerId|String|**TODO: Add Description**|
|customerLocation|[location](../resources/location.md)|**TODO: Add Description**|
|customerName|String|**TODO: Add Description**|
|customerNotes|String|**TODO: Add Description**|
|customerPhone|String|**TODO: Add Description**|
|customers|[bookingCustomerInformationBase](../resources/bookingcustomerinformationbase.md) collection|**TODO: Add Description**|
|customerTimeZone|String|**TODO: Add Description**|
|duration|Duration|**TODO: Add Description**|
|end|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|filledAttendeesCount|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|invoiceAmount|Double|**TODO: Add Description**|
|invoiceDate|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|invoiceId|String|**TODO: Add Description**|
|invoiceStatus|bookingInvoiceStatus|**TODO: Add Description**.The possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String|**TODO: Add Description**|
|isLocationOnline|Boolean|**TODO: Add Description**|
|joinWebUrl|String|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|maximumAttendeesCount|Int32|**TODO: Add Description**|
|onlineMeetingUrl|String|**TODO: Add Description**|
|optOutOfCustomerEmail|Boolean|**TODO: Add Description**|
|postBuffer|Duration|**TODO: Add Description**|
|preBuffer|Duration|**TODO: Add Description**|
|price|Double|**TODO: Add Description**|
|priceType|bookingPriceType|**TODO: Add Description**.The possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|reminders|[bookingReminder](../resources/bookingreminder.md) collection|**TODO: Add Description**|
|selfServiceAppointmentId|String|**TODO: Add Description**|
|serviceId|String|**TODO: Add Description**|
|serviceLocation|[location](../resources/location.md)|**TODO: Add Description**|
|serviceName|String|**TODO: Add Description**|
|serviceNotes|String|**TODO: Add Description**|
|smsNotificationsEnabled|Boolean|**TODO: Add Description**|
|staffMemberIds|String collection|**TODO: Add Description**|
|start|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingAppointment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingAppointment",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "selfServiceAppointmentId": "String",
  "additionalInformation": "String",
  "appointmentLabel": "String",
  "isLocationOnline": "Boolean",
  "onlineMeetingUrl": "String",
  "joinWebUrl": "String",
  "smsNotificationsEnabled": "Boolean",
  "customerId": "String",
  "customerName": "String",
  "customerEmailAddress": "String",
  "customerPhone": "String",
  "customerLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "customerTimeZone": "String",
  "customerNotes": "String",
  "serviceId": "String",
  "serviceName": "String",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "duration": "String (duration)",
  "preBuffer": "String (duration)",
  "postBuffer": "String (duration)",
  "serviceLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "priceType": "String",
  "price": "Double",
  "serviceNotes": "String",
  "reminders": [
    {
      "@odata.type": "microsoft.graph.bookingReminder"
    }
  ],
  "optOutOfCustomerEmail": "Boolean",
  "anonymousJoinWebUrl": "String",
  "customers": [
    {
      "@odata.type": "microsoft.graph.bookingCustomerInformation"
    }
  ],
  "maximumAttendeesCount": "Integer",
  "filledAttendeesCount": "Integer",
  "staffMemberIds": [
    "String"
  ],
  "invoiceAmount": "Double",
  "invoiceDate": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "invoiceId": "String",
  "invoiceStatus": "String",
  "invoiceUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingAppointment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


