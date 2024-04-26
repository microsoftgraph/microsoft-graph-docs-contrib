---
title: "Update virtualEvent"
description: "Update the properties of a virtualEvent object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Update virtualEvent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a virtual event object.

Currently the supported virtual event types are: [virtualEventWebinar](../resources/virtualeventwebinar.md), [virtualEventTownhall](../resources/virtualeventtownhall.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/virtualEvents/webinars/{id}
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
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | Identity information of coorganizers of the virtual event. |
| description | [itemBody](../resources/itembody.md) | Description of the virtual event. |
| displayName | String | Display name of the virtual event. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the virtual event ends. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the virtual event starts. |

## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventWebinar](../resources/virtualeventwebinar.md) or [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventtownhall"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be
Content-Type: application/json

{
  "startDateTime": {
    "dateTime": "2024-03-31T10:00:00",
    "timeZone": "Pacific Standard Time"
  },
  "endDateTime": {
    "dateTime": "2024-03-31T17:00:00",
    "timeZone": "Pacific Standard Time"
  }
}
```

### Response

The following example shows the response.
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
    "dateTime": "2024-03-31T10:00:00",
    "timeZone": "Pacific Standard Time"
  },
  "endDateTime": {
    "dateTime": "2024-03-31T17:00:00",
    "timeZone": "Pacific Standard Time"
  },
  "createdBy": {
    "application": null,
    "device": null,
    "user": {
      "@odata.type": "#microsoft.graph.communicationsUserIdentity",
      "id": "b7ef013a-c73c-4ec7-8ccb-e56290f45f68",
      "displayName": "Diane Demoss",
      "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
    }
  },
  "audience": "organization",
  "isInviteOnly": false,  
  "coOrganizers": [
    {
      "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
      "displayName": "Kenneth Brown",
      "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity",
      "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
      "displayName": "Emilee Pham",
      "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
    }
  ]
}
```
