---
title: "bookingCustomerInformation resource type"
description: "It lists down the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingCustomerInformation resource type

Namespace: microsoft.graph

It lists down the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|customerEmailAddress|String| The SMTP address of the bookingCustomer who is booking the appointment |
|customerId|String|The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable. |
|customerLocation|[location](../resources/location.md)| Represents location information for the bookingCustomer who is booking the appointment. |
|customerName|String|The customer's name. |
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID. You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId. |
|customerPhone|String|The customer's phone number. |
|customerTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](../resources/datetimetimezone.md).|
|customQuestionAnswers|[bookingQuestionAnswer](../resources/bookingquestionanswer.md) collection|It consists of the list of custom questions and answers given by the customer as part of the appointment |
|customerTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](../resources/datetimetimezone.md).|

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
  "customerName": "String",
  "customerEmailAddress": "String",
  "customerPhone": "String",
  "customerNotes": "String",
  "customerLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "customerTimeZone": "String",
  "customQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.bookingQuestionAnswer"
    }
  ],
  "customerTimeZone": "String"
}
```

