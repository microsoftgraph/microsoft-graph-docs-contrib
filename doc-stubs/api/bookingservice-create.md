---
title: "Create bookingService"
description: "Create a new bookingService object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bookingService
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookingService](../resources/bookingservice.md) object.

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
POST /bookingBusinesses/{bookingBusinessesId}/services
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookingService](../resources/bookingservice.md) object.

The following table shows the properties that are required when you create the [bookingService](../resources/bookingservice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|defaultDuration|Duration|**TODO: Add Description**|
|defaultLocation|[microsoft.bookings.api.location](../resources/location.md)|**TODO: Add Description**|
|defaultPrice|Double|**TODO: Add Description**|
|defaultPriceType|bookingPriceType|**TODO: Add Description**. The possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|defaultReminders|[microsoft.bookings.api.bookingReminder](../resources/bookingreminder.md) collection|The default reminders set in an appointment of this service.
The value of this property is only available when reading an individual booking service by id.|
|description|String|**TODO: Add Description**|
|isHiddenFromCustomers|Boolean|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|additionalInformation|String|**TODO: Add Description**|
|preBuffer|Duration|**TODO: Add Description**|
|postBuffer|Duration|**TODO: Add Description**|
|schedulingPolicy|[microsoft.bookings.api.bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|**TODO: Add Description**|
|staffMemberIds|String collection|**TODO: Add Description**|
|isLocationOnline|Boolean|**TODO: Add Description**|
|smsNotificationsEnabled|Boolean|**TODO: Add Description**|
|webUrl|String|The URL of the booking service.|



## Response

If successful, this method returns a `201 Created` response code and a [bookingService](../resources/bookingservice.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookingservice_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/services
Content-Type: application/json
Content-length: 810

{
  "@odata.type": "#microsoft.bookings.api.bookingService",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.bookings.api.bookingService"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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
```

