---
title: "Get bookingService"
description: "Get the properties and relationships of a bookingService object in the specified bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: apiPageType
---

# Get bookingService

Namespace: microsoft.graph

Get the properties and relationships of a [bookingService](../resources/bookingservice.md) object in the specified [bookingBusiness](../resources/bookingbusiness.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bookingservice_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/bookingservice-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /solutions/bookingBusinesses/{id}/services/{id}
```

## Optional query parameters

This method supports the $count and $expand [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [bookingService](../resources/bookingservice.md) object in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["Contosolunchdelivery@contoso.com", "57da6774-a087-4d69-b0e6-6fb82c339976"]
}-->
```http
GET https://graph.microsoft.com/v1.0/solutions/bookingBusinesses/Contosolunchdelivery@contoso.com/services/57da6774-a087-4d69-b0e6-6fb82c339976
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingService"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/solutions/$metadata#bookingBusinesses('Contosolunchdelivery%40contoso.com')/services/$entity",
    "id": "57da6774-a087-4d69-b0e6-6fb82c339976",
    "displayName": "Bento",
    "defaultDuration": "PT30M",
    "defaultPrice": 10.0,
    "defaultPriceType": "fixedPrice",
    "description": "Individual bento box lunch delivery",
    "languageTag": "en-US",
    "isHiddenFromCustomers": false,
    "notes": "Home-cooked special",
    "preBuffer": "PT5M",
    "postBuffer": "PT10M",
    "staffMemberIds": [],
    "isLocationOnline": true,
    "smsNotificationsEnabled": true,
    "isAnonymousJoinEnabled": false,
    "webUrl": "https://outlook.office365.com/owa/calendar/Contosolunchdelivery@contoso.com/bookings/s/gkcGIq92Z0u5h4FWB9Qgcg2",
    "customQuestions" : [
        {
            "questionId" : "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
            "isRequired" : true
        }
    ],
    "defaultLocation": {
        "displayName": "Contoso Lunch Delivery",
        "locationEmailAddress": null,
        "locationUri": "",
        "locationType": null,
        "uniqueId": null,
        "uniqueIdType": null,
        "address": {
            "street": "4567 First Street",
            "city": "Buffalo",
            "state": "NY",
            "countryOrRegion": "USA",
            "postalCode": "98052"
        },
        "coordinates": {
            "altitude": null,
            "latitude": null,
            "longitude": null,
            "accuracy": null,
            "altitudeAccuracy": null
        }
    },
    "defaultReminders": [
        {
            "offset": "P1D",
            "recipients": "allAttendees",
            "message": "Please be reminded that this service is tomorrow."
        }
    ],
    "schedulingPolicy": {
        "timeSlotInterval": "PT1H",
        "minimumLeadTime": "PT10H",
        "maximumAdvance": "P10D",
        "sendConfirmationsToOwner": true,
        "allowStaffSelection": true
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get bookingService",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
