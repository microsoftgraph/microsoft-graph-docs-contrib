---
title: "List services"
description: "Get the bookingService resources from the services navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List services
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the bookingService resources from the services navigation property.

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
GET /bookingBusinesses/{bookingBusinessesId}/services
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

If successful, this method returns a `200 OK` response code and a collection of [bookingService](../resources/bookingservice.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_bookingservice"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/services
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.bookings.api.bookingService)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.bookings.api.bookingService",
      "id": "3086e272-e272-3086-72e2-863072e28630",
      "displayName": "String",
      "defaultDuration": "String (duration)",
      "defaultLocation": {
        "@odata.type": "microsoft.graph.location"
      },
      "defaultPrice": "Double",
      "defaultPriceType": "String",
      "defaultReminders": [
        {
          "@odata.type": "microsoft.graph.bookingReminder"
        }
      ],
      "description": "String",
      "isHiddenFromCustomers": "Boolean",
      "notes": "String",
      "additionalInformation": "String",
      "preBuffer": "String (duration)",
      "postBuffer": "String (duration)",
      "schedulingPolicy": {
        "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
      },
      "staffMemberIds": [
        "String"
      ],
      "isLocationOnline": "Boolean",
      "smsNotificationsEnabled": "Boolean",
      "webUrl": "String"
    }
  ]
}
```

