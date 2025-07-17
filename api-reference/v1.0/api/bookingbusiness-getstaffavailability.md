---
title: "bookingsBusiness: getStaffAvailability"
description: "Learn how to get the availability information of staff members of a Microsoft Bookings calendar."
ms.localizationpriority: medium
author: kwekua
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
ms.date: 04/18/2024
---

# bookingsBusiness: getStaffAvailability

Namespace: microsoft.graph

Get the availability information of [staff members](../resources/bookingstaffmember.md) of a [Microsoft Bookings calendar](../resources/bookingappointment.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingbusiness_getstaffavailability" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingbusiness-getstaffavailability-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /solutions/bookingBusinesses/{id}/getStaffAvailability
```

## Request headers

|Name |Description |
|:--------------|:------------|
|Authorization |Bearer {code}. Required. |
|Content-Type| application/json. Required.|

## Request body

In the request body, pass the list of staff IDs along with two other parameters of [dateTimeTimeZone resource type](/graph/api/resources/datetimetimezone) called **startDateTime** and **endDateTime**. These correspond to the two timestamps between which the staff availability will be returned.

## Response

If successful, this method returns a `200 OK` response code and a [staffAvailabilityItem](../resources/staffavailabilityitem.md) collection in the response.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "bookingbusiness_getstaffavailability",
  "sampleKeys": ["Contosolunchdelivery@contoso.com"]
}-->

```http
POST https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@contoso.com/getStaffAvailability
Content-Type: application/json

{
    "staffIds": [
        "311a5454-08b2-4560-ba1c-f715e938cb79"
    ],
    "startDateTime": {
        "dateTime": "2022-01-25T00:00:00",
        "timeZone": "India Standard Time"
    },
    "endDateTime": {
        "dateTime": "2022-01-26T17:00:00",
        "timeZone": "Pacific Standard Time"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bookingbusiness-getstaffavailability-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/bookingbusiness-getstaffavailability-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/bookingbusiness-getstaffavailability-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bookingbusiness-getstaffavailability-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bookingbusiness-getstaffavailability-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/bookingbusiness-getstaffavailability-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/bookingbusiness-getstaffavailability-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/bookingbusiness-getstaffavailability-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.staffAvailabilityItem",
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "staffAvailabilityItem": [
        {
            "staffId": "311a5454-08b2-4560-ba1c-f715e938cb79",
            "availabilityItems": [
                {
                    "status": "Available",
                    "startDateTime": {
                        "dateTime": "2022-01-24T08:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "endDateTime": {
                        "dateTime": "2022-01-24T15:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "serviceId": ""
                },
                {
                    "status": "Busy",
                    "startDateTime": {
                        "dateTime": "2022-01-24T15:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "endDateTime": {
                        "dateTime": "2022-01-24T16:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "serviceId": "57da6774-a087-4d69-b0e6-6fb82c339976"
                },
                {
                    "status": "Available",
                    "startDateTime": {
                        "dateTime": "2022-01-24T16:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "endDateTime": {
                        "dateTime": "2022-01-24T17:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "serviceId": ""
                },
                {
                    "status": "Available",
                    "startDateTime": {
                        "dateTime": "2022-01-25T08:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "endDateTime": {
                        "dateTime": "2022-01-25T17:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "serviceId": ""
                },
                {
                    "status": "Available",
                    "startDateTime": {
                        "dateTime": "2022-01-26T08:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "endDateTime": {
                        "dateTime": "2022-01-26T17:00:00",
                        "timeZone": "(UTC-08:00) Pacific Time (US & Canada)"
                    },
                    "serviceId": ""
                }
            ]
        }
    ]
}
```
<!--
In the response body, for each staff member, their available windows are returned. The types of status of the windows are explained below.
|Type      | Explanation              |
|:--------------------|:---------------------------------------------------------|
|Available | The staff member is available in the given window.   |
|slotAvailable | The staff member has an appointment in the given window. The appointment is for a service which has **maxAttendeecount** more than 1. The customer can join this appointment as there are empty slots available.   |
|Busy | The staff member has an appointment in the given window. Either the staff member has an appointment for a service which has **maxAttendeecount** equal to 1 or the staff has an appointment for a service with **maxAttendeecount** more than 1 but without any available slots.  |
-->
