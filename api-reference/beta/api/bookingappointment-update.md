---
title: "Update bookingAppointment"
description: "Update the properties of a bookingAppointment object in the specified bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
ms.topic: reference
---

# Update bookingAppointment

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [bookingAppointment](../resources/bookingappointment.md) object in the specified [bookingBusiness](../resources/bookingbusiness.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingappointment_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingappointment-update-permissions.md)]

> [!NOTE]
> If you create a custom app using application permissions, you must follow the [Business rules validation](/graph/bookingsbusiness-business-rules).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /solutions/bookingBusinesses/{id}/appointments/{id}
```

## Optional request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String|The SMTP address of the [bookingCustomer](../resources/bookingcustomer.md) who is booking the appointment.|
|customerId|String|The ID of the [bookingCustomer](../resources/bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the **customerId** immutable.|
|customerLocation|[location](../resources/location.md)|Represents location information for the [bookingCustomer](../resources/bookingcustomer.md) who is booking the appointment.|
|customerName|String|The customer's name.|
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when reading this **bookingAppointment** by its ID. <br> You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by **customerId**.|
|customerPhone|String|The customer's phone number.|
|customers|[bookingCustomerInformation](../resources/bookingcustomerinformation.md) collection|It lists down the customer properties for an appointment. An appointment contains a list of customer information and each unit indicates the properties of a customer who is part of that appointment. Optional.|
|customerTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](../resources/datetimetimezone.md).|
|duration|Duration|The length of the appointment, denoted in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|end|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone that the appointment ends.|
|invoiceAmount|Double|The billed amount on the invoice.|
|invoiceDate|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone of the invoice for this appointment.|
|invoiceId|String|The ID of the invoice.|
|invoiceStatus|string| The status of the invoice. Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, and `corrective`.|
|isCustomerAllowedToManageBooking|Boolean|Indicates that the customer can manage bookings created by the staff. The default value is `false`.|
|invoiceUrl|String|The URL of the invoice in Microsoft Bookings.|
|filledAttendeesCount|Int32|The current number of customers in the appointment. Required.|
|isLocationOnline|Boolean|True indicates that the appointment is held online. The default value is `false`.|
|maximumAttendeesCount|Int32|The maximum number of customers allowed in the appointment. Required. |
|optOutOfCustomerEmail|Boolean|True indicates that the [bookingCustomer](../resources/bookingcustomer.md) for this appointment doesn't wish to receive a confirmation for this appointment.|
|postBuffer|Duration|The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|preBuffer|Duration|The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|price|Double|The regular price for an appointment for the specified [bookingService](../resources/bookingservice.md).|
|priceType|bookingPriceType| A setting to provide flexibility for the pricing structure of services. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`, `unknownFutureValue`.|
|reminders|[bookingReminder](../resources/bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String|Another tracking ID for the appointment, if the appointment was created directly by the customer on the scheduling page, as opposed to by a staff member on behalf of the customer.|
|serviceId|String|The ID of the [bookingService](../resources/bookingservice.md) associated with this appointment.|
|serviceLocation|[location](../resources/location.md)|The location where the service is delivered.|
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it's computed from the service associated with the appointment by the **serviceId** property.|
|serviceNotes|String|Notes from a [bookingStaffMember](../resources/bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|smsNotificationsEnabled|Boolean|True indicates SMS notifications will be sent to the customers for the appointment. The default value is `false`.|
|staffMemberIds|String collection|The ID of each [bookingStaffMember](../resources/bookingstaffmember.md) who is scheduled in this appointment.|
|start|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date, time, and time zone the appointment begins.|

> [!NOTE]
> If the maximum number of customers (**maximumAttedeesCount**) allowed in the [service](../resources/bookingservice.md) is greater than 1:
> - Make sure that the customers exist in the Booking Calendar. If they don’t, create using the [Create bookingCustomer](bookingbusiness-post-customers.md) operation.
> - Pass valid customer IDs when you create or update the appointment. If the customer ID is invalid, that customer won't be included in the appointment object.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request

The following example changes the date of service by a day and updates the invoice date.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_bookingappointment",
  "sampleKeys": ["contosolunchdelivery@contoso.com", "AAMkADKnAAA="]
}-->
```http
PATCH https://graph.microsoft.com/beta/solutions/bookingBusinesses/contosolunchdelivery@contoso.com/appointments/AAMkADKnAAA=
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.bookingAppointment",
    "end":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "invoiceDate":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "start":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-06T12:00:00.0000000+00:00",
        "timeZone":"UTC"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-bookingappointment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-bookingappointment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-bookingappointment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-bookingappointment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-bookingappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-bookingappointment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-bookingappointment-python-snippets.md)]
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
  "description": "Update bookingappointment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


