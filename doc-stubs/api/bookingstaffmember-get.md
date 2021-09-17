---
title: "Get bookingStaffMember"
description: "Read the properties and relationships of a bookingStaffMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get bookingStaffMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [bookingStaffMember](../resources/bookingstaffmember.md) object.

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
GET /bookingBusinesses/{bookingBusinessesId}/staffMembers/{bookingStaffMemberId}
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

If successful, this method returns a `200 OK` response code and a [bookingStaffMember](../resources/bookingstaffmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_bookingstaffmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/staffMembers/{bookingStaffMemberId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.bookings.api.bookingStaffMember"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.bookings.api.bookingStaffMember",
    "id": "61f5c9a0-c9a0-61f5-a0c9-f561a0c9f561",
    "displayName": "String",
    "emailAddress": "String",
    "availabilityIsAffectedByPersonalCalendar": "Boolean",
    "colorIndex": "Integer",
    "role": "String",
    "useBusinessHours": "Boolean",
    "workingHours": [
      {
        "@odata.type": "microsoft.graph.bookingWorkHours"
      }
    ],
    "timeZone": "String"
  }
}
```

