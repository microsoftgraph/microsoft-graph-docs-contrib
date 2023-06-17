---
title: "bookingService resource type"
description: "Represents information about a particular service provided by a bookingBusiness, such as the service name, price, and the staff that usually provides such service."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingService resource type

Namespace: microsoft.graph
 
Represents information about a particular service provided by a [bookingBusiness](bookingbusiness.md), such as the service name, price, and the staff that usually provides such service.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List services](../api/bookingbusiness-list-services.md) | [bookingService](bookingservice.md) collection | Get a list of **bookingService** objects in the specified [bookingBusiness](../resources/bookingbusiness.md).|
|[Create bookingService](../api/bookingbusiness-post-services.md) | [bookingService](bookingservice.md) | Create a **bookingService** for the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Get bookingService](../api/bookingservice-get.md) | [bookingService](bookingservice.md) |Get the properties and relationships of a **bookingService** object in the specified [bookingBusiness](../resources/bookingbusiness.md).|
|[Update](../api/bookingservice-update.md) | None	|Update a **bookingService** object in the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Delete](../api/bookingservice-delete.md) | None |Delete a **bookingService** object in the specified [bookingBusiness](../resources/bookingbusiness.md). |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|additionalInformation|String|Additional information that is sent to the customer when an appointment is confirmed.|
|customQuestions|[bookingQuestionAssignment](../resources/bookingquestionassignment.md) collection| Contains the set of custom questions associated with a particular service. |
|defaultDuration|Duration|The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S. |
|defaultLocation|[location](location.md)|The default physical location for the service.|
|defaultPrice|Double|The default monetary price for the service.|
|defaultPriceType|bookingPriceType|The default way the service is charged. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`, `unknownFutureValue`.|
|defaultReminders|[bookingReminder](bookingreminder.md) collection|The default set of reminders for an appointment of this service. The value of this property is available only when reading this **bookingService** by its ID.|
|description|String|A text description for the service.|
|displayName|String|A service name.|
|id|String|The ID of that service, in a GUID format. Read-only.|
|isAnonymousJoinEnabled|Boolean|`True` if the URL to join the appointment anonymously (**anonymousJoinWebUrl**) will be generated for the appointment booked for this service.|
|isHiddenFromCustomers|Boolean|True means this service is not available to customers for booking.|
|isLocationOnline|Boolean|True indicates that the appointments for the service will be held online. Default value is false.|
|languageTag|String|The language of the self-service booking page.|
|maximumAttendeesCount|Int32|The maximum number of customers allowed in a service. If **maximumAttendeesCount** of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the [Create bookingCustomer](../api/bookingbusiness-post-customers.md) operation. |
|notes|String|Additional information about this service.|
|postBuffer|Duration|The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.|
|preBuffer|Duration|The time to buffer before an appointment for this service can start.|
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)|The set of policies that determine how appointments for this type of service should be created and managed.|
|smsNotificationsEnabled|Boolean|True indicates SMS notifications can be sent to the customers for the appointment of the service. Default value is false.|
|staffMemberIds|String collection|Represents those [staff members](bookingstaffmember.md) who provide this service. |
|webUrl|String|The URL a customer uses to access the service.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingService"
}-->

```json
{
  "additionalInformation": "String",
  "customQuestions": [
    {
      "@odata.type": "microsoft.graph.bookingQuestionAssignment"
    }
  ],
  "defaultDuration": "String (timestamp)",
  "defaultLocation": {"@odata.type": "microsoft.graph.location"},
  "defaultPrice": "Double",
  "defaultPriceType": {"@odata.type": "microsoft.graph.bookingPriceType"},
  "defaultReminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isAnonymousJoinEnabled": "Boolean",
  "isHiddenFromCustomers": "Boolean",
  "isLocationOnline": "Boolean",
  "languageTag": "String",
  "maximumAttendeesCount": "Int32",
  "notes": "String",
  "postBuffer": "String (timestamp)",
  "preBuffer": "String (timestamp)",
  "schedulingPolicy": {"@odata.type": "microsoft.graph.bookingSchedulingPolicy"},
  "smsNotificationsEnabled": "Boolean",
  "staffMemberIds": ["String"],
  "webUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


