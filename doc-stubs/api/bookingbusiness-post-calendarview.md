---
title: "Create bookingAppointment"
description: "Create a new bookingAppointment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bookingAppointment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new bookingAppointment object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /bookingBusinesses/{bookingBusinessesId}/calendarView
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookingAppointment](../resources/bookingappointment.md) object.

The following table shows the properties that are required when you create the [bookingAppointment](../resources/bookingappointment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|selfServiceAppointmentId|String|**TODO: Add Description**|
|additionalInformation|String|**TODO: Add Description**|
|isLocationOnline|Boolean|**TODO: Add Description**|
|onlineMeetingUrl|String|**TODO: Add Description**|
|joinWebUrl|String|**TODO: Add Description**|
|smsNotificationsEnabled|Boolean|**TODO: Add Description**|
|customerId|String|The id of the booking customer associated with this appointment.
If CustomerId is not specified when an appointment is created then a new customer is created based on the appointment customer information. Once set, the customerId should be considered immutable.|
|customerName|String|**TODO: Add Description**|
|customerEmailAddress|String|**TODO: Add Description**|
|customerPhone|String|**TODO: Add Description**|
|customerLocation|[microsoft.bookings.api.location](../resources/location.md)|**TODO: Add Description**|
|customerTimeZone|String|**TODO: Add Description**|
|customerNotes|String|Notes from the customer associated with this appointment.
The value of this property is only available when reading an individual booking appointment by id. Its value can only be set when creating a new appointment with a new customer, ie, without specifying a CustomerId. After that, the property is computed from the customer represented by CustomerId.|
|serviceId|String|The id of the booking service associated with this appointment.|
|serviceName|String|The name of the booking service associated with this appointment.
This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the service id.|
|start|[microsoft.bookings.api.dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|end|[microsoft.bookings.api.dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|duration|Duration|**TODO: Add Description**|
|preBuffer|Duration|**TODO: Add Description**|
|postBuffer|Duration|**TODO: Add Description**|
|serviceLocation|[microsoft.bookings.api.location](../resources/location.md)|**TODO: Add Description**|
|priceType|bookingPriceType|**TODO: Add Description**. The possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|price|Double|**TODO: Add Description**|
|serviceNotes|String|The value of this property is only available when reading an individual booking appointment by id.|
|reminders|[microsoft.bookings.api.bookingReminder](../resources/bookingreminder.md) collection|The value of this property is only available when reading an individual booking appointment by id.|
|optOutOfCustomerEmail|Boolean|**TODO: Add Description**|
|staffMemberIds|String collection|**TODO: Add Description**|
|invoiceAmount|Double|**TODO: Add Description**|
|invoiceDate|[microsoft.bookings.api.dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|invoiceId|String|**TODO: Add Description**|
|invoiceStatus|bookingInvoiceStatus|**TODO: Add Description**. The possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [bookingAppointment](../resources/bookingappointment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookingappointment_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/calendarView
Content-Type: application/json
Content-length: 1382

{
  "@odata.type": "#microsoft.bookings.api.bookingAppointment",
  "selfServiceAppointmentId": "String",
  "additionalInformation": "String",
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


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.bookings.api.bookingAppointment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.bookings.api.bookingAppointment",
  "id": "77148686-8686-7714-8686-147786861477",
  "selfServiceAppointmentId": "String",
  "additionalInformation": "String",
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

