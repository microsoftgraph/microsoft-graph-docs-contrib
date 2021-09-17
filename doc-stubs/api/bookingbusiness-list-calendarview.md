---
title: "List calendarView"
description: "Get the bookingAppointment resources from the calendarView navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List calendarView
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the bookingAppointment resources from the calendarView navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /bookingBusinesses/{bookingBusinessesId}/calendarView
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [bookingAppointment](../resources/bookingappointment.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_bookingappointment"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/calendarView
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.bookings.api.bookingAppointment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.bookings.api.bookingAppointment",
      "id": "77148686-8686-7714-8686-147786861477",
      "selfServiceAppointmentId": "String",
      "additionalInformation": "String",
      "isLocationOnline": "Boolean",
      "onlineMeetingUrl": "String",
      "joinWebUrl": "String",
      "smsNotificationsEnabled": "Boolean",
      "customerId": "String",
      "customerName": "String",
      "customerEmailAddress": "String",
      "customerPhone": "String",
      "customerLocation": {
        "@odata.type": "microsoft.graph.location"
      },
      "customerTimeZone": "String",
      "customerNotes": "String",
      "serviceId": "String",
      "serviceName": "String",
      "start": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "end": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "duration": "String (duration)",
      "preBuffer": "String (duration)",
      "postBuffer": "String (duration)",
      "serviceLocation": {
        "@odata.type": "microsoft.graph.location"
      },
      "priceType": "String",
      "price": "Double",
      "serviceNotes": "String",
      "reminders": [
        {
          "@odata.type": "microsoft.graph.bookingReminder"
        }
      ],
      "optOutOfCustomerEmail": "Boolean",
      "staffMemberIds": [
        "String"
      ],
      "invoiceAmount": "Double",
      "invoiceDate": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "invoiceId": "String",
      "invoiceStatus": "String",
      "invoiceUrl": "String"
    }
  ]
}
```

