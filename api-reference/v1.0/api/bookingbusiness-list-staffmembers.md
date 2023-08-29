---
title: "List staffMembers"
description: "Get a list of bookingStaffMember objects in the specified bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: apiPageType
---

# List staffMembers

Namespace: microsoft.graph

Get a list of [bookingStaffMember](../resources/bookingstaffmember.md) objects in the specified [bookingBusiness](../resources/bookingbusiness.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  Bookings.Read.All, BookingsAppointment.ReadWrite.All, Bookings.ReadWrite.All, Bookings.Manage.All   |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | BookingsAppointment.ReadWrite.All, Bookings.Read.All   |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /solutions/bookingBusinesses/{id}/staffMembers
```

## Optional query parameters

This method supports the `$count` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookingStaffMember](../resources/bookingstaffmember.md) objects in the response body.

## Example

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name" : "bookingbusinessliststaffmembers",
  "sampleKeys": ["Contosolunchdelivery@contoso.onmicrosoft.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/staffMembers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/bookingbusinessliststaffmembers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/bookingbusinessliststaffmembers-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/bookingbusinessliststaffmembers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/bookingbusinessliststaffmembers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/bookingbusinessliststaffmembers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/bookingbusinessliststaffmembers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/bookingbusinessliststaffmembers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/bookingbusinessliststaffmembers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingStaffMember",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context":"https://graph.microsoft.com/v1.0/solutions/$metadata#bookingBusinesses('Contosolunchdelivery%40contoso.onmicrosoft.com')/staffMembers",
    "value":[
        {
            "@odata.type":"#microsoft.graph.bookingStaffMember",
            "id":"8ee1c803-a1fa-406d-8259-7ab53233f148",
            "displayName":"Dana Swope",
            "emailAddress":"danas@contoso.com",
            "availabilityIsAffectedByPersonalCalendar":false,
            "role":"externalGuest",
            "timeZone":"America/Chicago",
            "useBusinessHours":true,
            "isEmailNotificationEnabled": false,
            "workingHours":[
                {
                    "day":"monday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"tuesday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"wednesday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"thursday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"friday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                }
            ]
        },
        {
            "@odata.type":"#microsoft.graph.bookingStaffMember",
            "id":"71d64d0e-7225-49b6-b0b1-070d476cda51",
            "displayName":"Samantha Booth",
            "emailAddress":"samanthab@contoso.onmicrosoft.com",
            "availabilityIsAffectedByPersonalCalendar":true,
            "role":"administrator",
            "timeZone":"America/Chicago",
            "useBusinessHours":true,
            "isEmailNotificationEnabled": false,
            "workingHours":[
                {
                    "day":"monday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"tuesday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"wednesday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"thursday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"friday",
                    "timeSlots":[
                        {
                            "startTime":"08:00:00.0000000",
                            "endTime":"17:00:00.0000000"
                        }
                    ]
                },
                {
                    "day":"saturday",
                    "timeSlots":[

                    ]
                },
                {
                    "day":"sunday",
                    "timeSlots":[

                    ]
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
  "description": "List staffMembers",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
