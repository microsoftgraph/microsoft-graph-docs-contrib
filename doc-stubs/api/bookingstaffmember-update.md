---
title: "Update bookingStaffMember"
description: "Update the properties of a bookingStaffMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update bookingStaffMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [bookingStaffMember](../resources/bookingstaffmember.md) object.

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
PATCH /bookingBusinesses/{bookingBusinessesId}/staffMembers/{bookingStaffMemberId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookingStaffMember](../resources/bookingstaffmember.md) object.

The following table shows the properties that are required when you update the [bookingStaffMember](../resources/bookingstaffmember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md)|
|emailAddress|String|The e-mail address of this person. Inherited from [bookingPerson](../resources/bookingperson.md)|
|availabilityIsAffectedByPersonalCalendar|Boolean|**TODO: Add Description**|
|colorIndex|Int32|**TODO: Add Description**|
|role|bookingStaffRole|**TODO: Add Description**. The possible values are: `guest`, `administrator`, `viewer`, `externalGuest`.|
|useBusinessHours|Boolean|**TODO: Add Description**|
|workingHours|[microsoft.bookings.api.bookingWorkHours](../resources/bookingworkhours.md) collection|**TODO: Add Description**|
|timeZone|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [bookingStaffMember](../resources/bookingstaffmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_bookingstaffmember"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/bookingBusinesses/{bookingBusinessesId}/staffMembers/{bookingStaffMemberId}
Content-Type: application/json
Content-length: 381

{
  "@odata.type": "#microsoft.graph.bookingStaffMember",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.bookingStaffMember",
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
```

