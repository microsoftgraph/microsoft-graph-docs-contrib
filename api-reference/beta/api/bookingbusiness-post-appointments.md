---
title: "Create bookingAppointment"
description: "Create a new bookingAppointment for the specified bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
ms.date: 04/19/2024
---

# Create bookingAppointment

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookingAppointment](../resources/bookingappointment.md) for the specified [bookingBusiness](../resources/bookingbusiness.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingbusiness_post_appointments" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingbusiness-post-appointments-permissions.md)]

> [!NOTE]
> If you create a custom app using application permissions, you must follow the [Business rules validation](/graph/bookingsbusiness-business-rules).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /solutions/bookingbusinesses/{id}/appointments

```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

In the request body, supply a JSON representation of [bookingAppointment](../resources/bookingappointment.md) object.

If the maximum number of customers (**maximumAttedeesCount**) allowed in the [service](../resources/bookingservice.md) is greater than 1:

- Make sure that the customers exist in the Booking Calendar. If they don’t, create using the [Create bookingCustomer](bookingbusiness-post-customers.md) operation.
- Pass valid customer IDs when you create or update the appointment. If the customer ID is invalid, that customer isn't included in the appointment object.

## Response

If successful, this method returns a `201 Created` response code and a [bookingAppointment](../resources/bookingappointment.md) object in the response body.

## Example

### Request

The following example shows a request. This appointment doesn't involve booking specific staff members.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_bookingappointment_from_bookingbusiness",
  "sampleKeys": ["contosolunchdelivery@contoso.com"]
}-->
```http
POST https://graph.microsoft.com/beta/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/appointments
Content-type: application/json

{
    "@odata.type":"#microsoft.graph.bookingAppointment",
    "customerEmailAddress":"jordanm@contoso.com",
    "customerLocation":{
        "@odata.type":"#microsoft.graph.location",
        "address":{
            "@odata.type":"#microsoft.graph.physicalAddress",
            "city":"Buffalo",
            "countryOrRegion":"USA",
            "postalCode":"98052",
            "postOfficeBox":null,
            "state":"NY",
            "street":"123 First Avenue",
            "type@odata.type":"#microsoft.graph.physicalAddressType",
            "type":null
        },
        "coordinates":null,
        "displayName":"Customer",
        "locationEmailAddress":null,
        "locationType@odata.type":"#microsoft.graph.locationType",
        "locationType":null,
        "locationUri":null,
        "uniqueId":null,
        "uniqueIdType@odata.type":"#microsoft.graph.locationUniqueIdType",
        "uniqueIdType":null
    },
    "customerName":"Jordan Miller",
    "customerNotes":"Please be on time.",
    "customerPhone":"213-555-0199",
    "customerTimeZone":"America/Chicago",
    "smsNotificationsEnabled":true,
    "end":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-01T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "invoiceAmount":10.0,
    "invoiceDate":{
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",
        "dateTime":"2018-05-01T12:30:00.0000000+00:00",
        "timeZone":"UTC"
    },
    "invoiceId":"1001",
    "invoiceStatus@odata.type":"#microsoft.graph.bookingInvoiceStatus",
    "invoiceStatus":"open",
    "isCustomerAllowedToManageBooking": true,
    "invoiceUrl":"theInvoiceUrl",
    "isLocationOnline": true,
    "optOutOfCustomerEmail": false,
    "anonymousJoinWebUrl": null,
    "postBuffer": "PT10M",
    "preBuffer": "PT5M",
    "price": 10.0,
    "priceType@odata.type": "#microsoft.graph.bookingPriceType",
    "priceType": "fixedPrice",
    "reminders@odata.type": "#Collection(microsoft.graph.bookingReminder)",
    "reminders": [
        {
            "@odata.type": "#microsoft.graph.bookingReminder",
            "message": "This service is tomorrow",
            "offset": "P1D",
            "recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
            "recipients": "allAttendees"
        },
        {
            "@odata.type": "#microsoft.graph.bookingReminder",
            "message": "Please be available to enjoy your lunch service.",
            "offset": "PT1H",
            "recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
            "recipients": "customer"
        },
        {
            "@odata.type": "#microsoft.graph.bookingReminder",
            "message": "Please check traffic for next cater.",
            "offset": "PT2H",
            "recipients@odata.type": "#microsoft.graph.bookingReminderRecipients",
            "recipients": "staff"
        }
    ],
    "serviceId": "57da6774-a087-4d69-b0e6-6fb82c339976",
    "serviceLocation": {
        "@odata.type": "#microsoft.graph.location",
        "address": {
            "@odata.type": "#microsoft.graph.physicalAddress",
            "city": "Buffalo",
            "countryOrRegion": "USA",
            "postalCode": "98052",
            "postOfficeBox": null,
            "state": "NY",
            "street": "123 First Avenue",
            "type@odata.type": "#microsoft.graph.physicalAddressType",
            "type": null
        },
        "coordinates": null,
        "displayName": "Customer location",
        "locationEmailAddress": null,
        "locationType@odata.type": "#microsoft.graph.locationType",
        "locationType": null,
        "locationUri": null,
        "uniqueId": null,
        "uniqueIdType@odata.type": "#microsoft.graph.locationUniqueIdType",
        "uniqueIdType": null
    },
    "serviceName": "Catered bento",
    "serviceNotes": "Customer requires punctual service.",
    "start": {
        "@odata.type": "#microsoft.graph.dateTimeTimeZone",
        "dateTime": "2018-05-01T12:00:00.0000000+00:00",
        "timeZone": "UTC"
    },
    "maximumAttendeesCount": 5,
    "filledAttendeesCount": 1,
    "customers": [
        {
            "@odata.type": "#microsoft.graph.bookingCustomerInformation",
            "customerId": "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
            "name": "Jordan Miller",
            "emailAddress": "jordanm@contoso.com",
            "phone": "213-555-0199",
            "notes": null,
            "location": {
                "@odata.type": "#microsoft.graph.location",
                "displayName": "Customer",
                "locationEmailAddress": null,
                "locationUri": "",
                "locationType": null,
                "uniqueId": null,
                "uniqueIdType": null,
                "address": {
                    "@odata.type": "#microsoft.graph.physicalAddress",
                    "type": "home",
                    "postOfficeBox": "",
                    "street": "",
                    "city": "",
                    "state": "",
                    "countryOrRegion": "",
                    "postalCode": ""
                },
                "coordinates": {
                    "altitude": null,
                    "latitude": null,
                    "longitude": null,
                    "accuracy": null,
                    "altitudeAccuracy": null
                }
            },
            "timeZone":"America/Chicago",
            "customQuestionAnswers": [
                {
                    "questionId": "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
                    "question": "What is your age",
                    "answerInputType": "text",
                    "answerOptions": [],
                    "isRequired": true,
                    "answer": "25",
                    "selectedOptions": []
                }
            ]
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-bookingappointment-from-bookingbusiness-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-bookingappointment-from-bookingbusiness-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-bookingappointment-from-bookingbusiness-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-bookingappointment-from-bookingbusiness-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-bookingappointment-from-bookingbusiness-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-bookingappointment-from-bookingbusiness-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-bookingappointment-from-bookingbusiness-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingAppointment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/bookingBusinesses('Contosolunchdelivery%40contoso.com')/appointments/$entity",
    "id": "AAMkADc7zF4J0AAA8v_KnAAA=",
    "selfServiceAppointmentId": "00000000-0000-0000-0000-000000000000",
    "isLocationOnline": true,
    "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MTlhZTE3MDUtODk0Yy00MGZkLTlhNzktN2FmYTk3MDUxNmE2%40thread.v2/0?context=%7b%22Tid%22%3a%22995fa18c-b557-4694-8d07-b89779d6dc77%22%2c%22Oid%22%3a%22d4d260ab-989d-490e-b121-e2066391807a%22%7d",
    "smsNotificationsEnabled": true,
    "customerId": "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
    "customerName": "Jordan Miller",
    "customerEmailAddress": "jordanm@contoso.com",
    "customerPhone": "213-555-0199",
    "customerTimeZone":"America/Chicago",
    "customerNotes": null,
    "serviceId": "57da6774-a087-4d69-b0e6-6fb82c339976",
    "serviceName": "Catered bento",
    "duration": "PT30M",
    "preBuffer": "PT5M",
    "postBuffer": "PT10M",
    "priceType": "fixedPrice",
    "price": 10.0,
    "serviceNotes": "Customer requires punctual service.",
    "optOutOfCustomerEmail": false,
    "anonymousJoinWebUrl": null,
    "staffMemberIds": [],
    "invoiceAmount": 10.0,
    "invoiceId": "1001",
    "invoiceStatus": "open",
    "invoiceUrl": "theInvoiceUrl",
    "isCustomerAllowedToManageBooking": true,
    "customerLocation": {
        "displayName": "Customer",
        "locationEmailAddress": null,
        "locationUri": "",
        "locationType": null,
        "uniqueId": null,
        "uniqueIdType": null,
        "address": {
            "type": "home",
            "postOfficeBox": "",
            "street": "",
            "city": "",
            "state": "",
            "countryOrRegion": "",
            "postalCode": ""
        },
        "coordinates": {
            "altitude": null,
            "latitude": null,
            "longitude": null,
            "accuracy": null,
            "altitudeAccuracy": null
        }
    },
    "start": {
        "dateTime": "2018-05-01T12:00:00.0000000Z",
        "timeZone": "UTC"
    },
    "end": {
        "dateTime": "2018-05-01T12:30:00.0000000Z",
        "timeZone": "UTC"
    },
    "serviceLocation": {
        "displayName": "Customer location (123 First Avenue, Buffalo, NY 98052, USA)",
        "locationEmailAddress": null,
        "locationUri": "",
        "locationType": null,
        "uniqueId": null,
        "uniqueIdType": null,
        "address": {
            "type": "home",
            "postOfficeBox": "",
            "street": "",
            "city": "",
            "state": "",
            "countryOrRegion": "",
            "postalCode": ""
        },
        "coordinates": {
            "altitude": null,
            "latitude": null,
            "longitude": null,
            "accuracy": null,
            "altitudeAccuracy": null
        }
    },
    "reminders": [
        {
            "offset": "P1D",
            "recipients": "allAttendees",
            "message": "This service is tomorrow"
        },
        {
            "offset": "PT1H",
            "recipients": "customer",
            "message": "Please be available to enjoy your lunch service."
        },
        {
            "offset": "PT2H",
            "recipients": "staff",
            "message": "Please check traffic for next cater."
        }
    ],
    "invoiceDate": {
        "dateTime": "2018-05-01T12:30:00.0000000Z",
        "timeZone": "UTC"
    },
    "maximumAttendeesCount": 5,
    "filledAttendeesCount": 1,
    "customers": [
        {
            "@odata.type": "#microsoft.graph.bookingCustomerInformation",
            "customerId": "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
            "name": "Jordan Miller",
            "emailAddress": "jordanm@contoso.com",
            "phone": "213-555-0199",
            "notes": null,
            "location": {
                "@odata.type": "#microsoft.graph.location",
                "displayName": "Customer",
                "locationEmailAddress": null,
                "locationUri": "",
                "locationType": null,
                "uniqueId": null,
                "uniqueIdType": null,
                "address": {
                    "@odata.type": "#microsoft.graph.physicalAddress",
                    "type": "home",
                    "postOfficeBox": "",
                    "street": "",
                    "city": "",
                    "state": "",
                    "countryOrRegion": "",
                    "postalCode": ""
                },
                "coordinates": {
                    "altitude": null,
                    "latitude": null,
                    "longitude": null,
                    "accuracy": null,
                    "altitudeAccuracy": null
                }
            },
            "timeZone": "America/Chicago",
            "customQuestionAnswers": [
                {
                    "questionId": "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
                    "question": "What is your age",
                    "answerInputType": "text",
                    "answerOptions": [],
                    "isRequired": true,
                    "answer": "25",
                    "selectedOptions": []
                }
            ]
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create bookingAppointment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


