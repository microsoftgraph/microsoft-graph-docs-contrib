---
title: "Update bookingservice"
description: "Update the properties of a bookingService object in the specified bookingbusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
ms.date: 04/19/2024
---

# Update bookingservice

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [bookingService](../resources/bookingservice.md) object in the specified [bookingBusiness](../resources/bookingbusiness.md).

The following are some examples you can customize for a service:
- Price
- Typical length of an appointment
- Reminders
- Any, time buffer to set up before or finish up after the service
- [Scheduling policy](../resources/bookingschedulingpolicy.md) parameters such as minimum notice to book or cancel, and whether customers can select specific staff members for an appointment.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingservice_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingservice-update-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /solutions/bookingbusinesses/{id}/services/{id}
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|defaultDuration|Duration|The default length of the service, represented in numbers of days, hours, minutes, and seconds. For example, P11D23H59M59.999999999999S. |
|defaultLocation|[location](../resources/location.md)|The default physical location for the service.|
|defaultPrice|Double|The default monetary price for the service.|
|defaultPriceType|bookingPriceType|The default way the service is charged. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`, `unknownFutureValue`.|
|defaultReminders|[bookingReminder](../resources/bookingreminder.md) collection|The default set of reminders for an appointment of this service. The value of this property is available only when reading this **bookingService** by its ID.|
|description|String|A text description for the service.|
|displayName|String|A service name.|
|id|String| Read-only.|
|isAnonymousJoinEnabled|Boolean|`True` if the URL to join the appointment anonymously (**anonymousJoinWebUrl**) is generated for the appointment booked for this service.|
|isCustomerAllowedToManageBooking|Boolean|Indicates that the customer can manage bookings created by the staff. The default value is `false`.|
|isHiddenFromCustomers|Boolean|True means this service isn't available to customers for booking.|
|isLocationOnline|Boolean|True indicates that the appointments for the service are held online. The default value is `false`.|
|languageTag|String|The language of the self-service booking page.|
|notes|String|Additional information about this service.|
|postBuffer|Duration|The time to buffer after an appointment for this service ends, and before the next customer appointment can be booked.|
|preBuffer|Duration|The time to buffer before an appointment for this service can start.|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|The set of policies that determine how appointments for this type of service should be created and managed.|
|smsNotificationsEnabled|Boolean|True indicates SMS notifications can be sent to the customers for the appointment of the service. The default value is `false`.|
|staffMemberIds|String collection|Represents those [staff members](../resources/bookingstaffmember.md) who provide this service. |
|customQuestions|[bookingQuestionAssignment](../resources/bookingquestionassignment.md) collection|This contains the set of custom questions associated with a particular service. Optional.|
|maximumAttendeesCount|Int32|The maximum number of customers allowed in a service.  |

## Response
If successful, this method returns a `204 No content` response code. It doesn't return anything in the response body.
## Example
### Request
The following example updates the duration of the specified service.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_bookingservice",
  "sampleKeys": ["contosolunchdelivery@contoso.com", "57da6774-a087-4d69-b0e6-6fb82c339976"]
}-->
```http
PATCH https://graph.microsoft.com/beta/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/services/57da6774-a087-4d69-b0e6-6fb82c339976
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.bookingService",
    "defaultDuration":"PT30M"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-bookingservice-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-bookingservice-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-bookingservice-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-bookingservice-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-bookingservice-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-bookingservice-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-bookingservice-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update bookingservice",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


