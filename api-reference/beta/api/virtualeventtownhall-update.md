---
title: "Update virtualEventTownhall"
description: "Update the properties of a virtualEventTownhall object."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update virtualEventTownhall
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/virtualEvents/townhalls/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
| displayName | String | Display name of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). Optional. |
| description | [itemBody](../resources/itembody.md) | Description of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). Optional. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). Optional. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the townhall. Inherited from [virtualEvent](../resources/virtualevent.md). Optional. |
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | Identity information of coorganizers of the townhall. Optional. |

## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventtownhall"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.virtualEventTownhall not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "status": "String",
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "isInviteOnly": "Boolean"
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhall"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "fc6e8c15-2fd7-1dd5-caa0-87056e6a12be",
  "status": "draft",
  "displayName": "The Impact of Tech on Our Lives",
  "description": {
    "content": "<p>Discusses how technology has changed the way we communicate, work, and interact with each other.<p>",
    "contentType": "html"
  },
  "startDateTime": {
    "dateTime": "2023-03-30T10:10:00",
    "timeZone": "Pacific Standard Time"
  },
  "endDateTime": {
    "dateTime": "2023-03-30T17:10:00",
    "timeZone": "Pacific Standard Time"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "isInviteOnly": "Boolean"
}
```

