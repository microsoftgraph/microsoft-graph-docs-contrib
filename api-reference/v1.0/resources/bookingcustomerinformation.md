---
title: "bookingCustomerInformation resource type"
description: "Registers the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingCustomerInformation resource type

Namespace: microsoft.graph

Registers the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailAddress|String| The SMTP address of the bookingCustomer who is booking the appointment |
|customerId|String|The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable. |
|location|[location](../resources/location.md)| Represents location information for the bookingCustomer who is booking the appointment. |
|name|String|The customer's name. |
|notes|String|Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId. |
|phone|String|The customer's phone number. |
|timeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](../resources/datetimetimezone.md).|
|customQuestionAnswers|[bookingQuestionAnswer](../resources/bookingquestionanswer.md) collection|It consists of the list of custom questions and answers given by the customer as part of the appointment |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingCustomerInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingCustomerInformation",
  "customerId": "String",
  "name": "String",
  "emailAddress": "String",
  "phone": "String",
  "notes": "String",
  "location": {
    "@odata.type": "microsoft.graph.location"
  },
  "timeZone": "String",
  "customQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.bookingQuestionAnswer"
    }
  ]
}
```

