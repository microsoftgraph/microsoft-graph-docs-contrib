---
title: "bookingCustomerInformation resource type"
description: "Registers the customer properties for an appointment. An appointment contains a list of customer information and each unit indicates the properties of a customer who is part of that appointment."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingCustomerInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Registers the customer properties for an appointment. An appointment contains a list of customer information and each unit indicates the properties of a customer who is part of that appointment.

Inherits from [bookingCustomerInformationBase](bookingcustomerinformationbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customerId|String|The ID of the [bookingCustomer](../resources/bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the customerId immutable. |
|customQuestionAnswers|[bookingQuestionAnswer](../resources/bookingquestionanswer.md) collection|It consists of the list of custom questions and answers given by the customer as part of the appointment. |
|emailAddress|String| The SMTP address of the **bookingCustomer** who is booking the appointment. |
|location|[location](../resources/location.md)| Represents location information for the **bookingCustomer** who is booking the appointment. |
|name|String|The customer's name. |
|notes|String|Notes from the customer associated with this appointment. You can get the value only when reading this **bookingAppointment** by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by the **customerId**. |
|phone|String|The customer's phone number. |
|smsNotificationsEnabled|Boolean|Indicates if the SMS notifications will be sent to the customer for the appointment
|timeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](../resources/datetimetimezone.md).|

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
  "smsNotificationsEnabled": "Boolean",
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

