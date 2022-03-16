---
title: "Get StaffAvailability"
description: "Learn how to get the availability information of staff members of a Booking Calendar."
ms.localizationpriority: medium
author: kwekua
ms.prod: "bookings"
doc_type: apiPageType
---

# Get StaffAvailability

This API returns the availability information of staff members of a Bookings Calendar.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions-reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Calendar.Read, Calendar.ReadWrite, Bookings.Read.All, Calendars.ReadWrite  |

## HTTP request

### Request

<!-- { "blockType": "ignored" } -->
```Get  /solutions/bookingBusinesses/{id}/getStaffAvailability
```

#### Request body

In the request body, pass the list of staff IDs along with 2 other parameters of [dateTimeTimeZone resource type](../../v1.0/resources/datetimetimezone.md) called **startDateTime** and **endDateTime**. These correspond to the 2 timestamps between which the staff availability will be returned.

##### Example

{ 
    "staffIds": [
        "311a5454-08b2-4560-ba1c-f715e938cb79"
    ],
    "startDateTime": {
        "dateTime": "2022-01-25T00: 00: 00",
        "timeZone": "India Standard Time"
    },
    "endDateTime": {
        "dateTime": "2022-01-26T17: 00: 00",
        "timeZone": "Pacific Standard Time"
    }
}

## Response body

In the response body, for each staff member, their available windows are returned. The types of status of the windows are explained below.

|Type      | Explanation              |
|:--------------------|:---------------------------------------------------------|
|Available | The staff member is available in the given window.   |
|slotAvailable | The staff member has an appointment in the given window. The appointment is for a service which has **maxAttendeecount** more than 1. The customer can join this appointment as there are empty slots available.   |
|Busy | The staff member has an appointment in the given window. Either the staff member has an appointment for a service which has **maxAttendeecount** equal to 1 or the staff has an appointment for a service with **maxAttendeecount** more than 1 but without any available slots.  |

### Example

{
    "staffAvailabilityResponse": [
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
