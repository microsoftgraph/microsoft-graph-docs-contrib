---
title: "Update desk"
description: "Update the properties of a desk object."
author: "MSGraphDocsvTeam"
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice:
doc_type: apiPageType
---

# Update desk

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [desk](../resources/desk.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "desk-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/desk-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /desk
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|mailboxDetails |mailboxDetails |The mailbox object-ids and email address that are associated with the desk. |
|displayDeviceName |String |The name of the display device (such as a monitor or projector) that is available at the desk. |
|Mode |Dictionary |The mode of the desk. We support 4 modes: <br/><br/>
<ul><li>assigned - Desks that are assigned to a user</li>
<li>bookable - Desks that can be booked in advance using desk reservation tools</li>
<li>walkup - First come, first serve desks. When you plug in to a peripheral on one of these desks, the desk is booked for you, assuming that the peripheral has been associated to the desk in Teams Pro Management portal</li>
<li>offline - Desk that are taken down for maintenance or marked as not bookable.</li></ul> |

## Response

If successful, this method returns a `200 OK` response code and an updated [desk](../resources/desk.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_desk"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/desk
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.desk",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.desk",
  "id": "24420c90-4ee4-0d01-ce17-d46ed4282abb",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "placeId": "String",
  "parentId": "String",
  "resourceLinks": [
    {
      "@odata.type": "microsoft.graph.resourceLink"
    }
  ],
  "tags": [
    "String"
  ],
  "isWheelChairAccessible": "Boolean",
  "label": "String",
  "displayDeviceName": "String",
  "mailboxDetails": {
    "@odata.type": "microsoft.graph.mailboxDetails"
  },
  "mode": {
    "@odata.type": "microsoft.graph.placeMode"
  }
}
```

