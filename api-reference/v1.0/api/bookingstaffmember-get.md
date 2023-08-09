---
title: "Get bookingStaffMember"
description: "Get the properties and relationships of a bookingStaffMember in the specified bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: apiPageType
---

# Get bookingStaffMember

Namespace: microsoft.graph

Get the properties and relationships of a [bookingStaffMember](../resources/bookingstaffmember.md) in the specified [bookingBusiness](../resources/bookingbusiness.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.Read.All, BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | BookingsAppointment.ReadWrite.All, Bookings.Read.All  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /solutions/bookingBusinesses/{id}/staffMembers/{id}
```

## Optional query parameters

This method supports the $count and $expand [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [bookingStaffMember](../resources/bookingstaffmember.md) object in the response body.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["Contosolunchdelivery@contoso.onmicrosoft.com", "71d64d0e-7225-49b6-b0b1-070d476cda51"]
}-->
```http
GET https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/staffMembers/71d64d0e-7225-49b6-b0b1-070d476cda51
```

### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingStaffMember"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.bookingStaffMember",
    "@odata.context": "https://graph.microsoft.com/v1.0/solutions/$metadata#bookingBusinesses('Contosolunchdelivery%40contoso.onmicrosoft.com')/staffMembers/$entity",
    "id": "71d64d0e-7225-49b6-b0b1-070d476cda51",
    "displayName": "Samantha Booth",
    "emailAddress": "samanthab@contoso.onmicrosoft.com",
    "availabilityIsAffectedByPersonalCalendar": true,
    "role": "administrator",
    "timeZone": "America/Chicago",
    "useBusinessHours": true,
    "workingHours": [
        {
            "day": "monday",
            "timeSlots": [
                {
                    "startTime": "08:00:00.0000000",
                    "endTime": "17:00:00.0000000"
                }
            ]
        },
        {
            "day": "tuesday",
            "timeSlots": [
                {
                    "startTime": "08:00:00.0000000",
                    "endTime": "17:00:00.0000000"
                }
            ]
        },
        {
            "day": "wednesday",
            "timeSlots": [
                {
                    "startTime": "08:00:00.0000000",
                    "endTime": "17:00:00.0000000"
                }
            ]
        },
        {
            "day": "thursday",
            "timeSlots": [
                {
                    "startTime": "08:00:00.0000000",
                    "endTime": "17:00:00.0000000"
                }
            ]
        },
        {
            "day": "friday",
            "timeSlots": [
                {
                    "startTime": "08:00:00.0000000",
                    "endTime": "17:00:00.0000000"
                }
            ]
        },
        {
            "day": "saturday",
            "timeSlots": []
        },
        {
            "day": "sunday",
            "timeSlots": []
        }
    ],
    "isEmailNotificationEnabled": false
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get bookingStaffMember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
