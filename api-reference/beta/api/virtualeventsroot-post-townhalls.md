---
title: "Create virtualEventTownhall"
description: "Create a new virtualEventTownhall object in draft mode."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Create virtualEvent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object in draft mode.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsroot-post-townhalls-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-post-townhalls-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/townhalls
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

You can specify the following properties when you create a **virtualEventTownhall**.

|Property|Type|Description|
|:---|:---|:---|
| audience | [meetingAudience](../resources/virtualeventtownhall.md#meetingaudience-values) | The audience to whom the town hall is visible. Possible values are: `everyone`, `organization`, `unknownFutureValue`. |
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | Identity information of coorganizers of the town hall. |
| description | [itemBody](../resources/itembody.md) | Description of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the town hall ends. Inherited from [virtualEvent](../resources/virtualevent.md). |
| invitedAttendees | [identity](../resources/identity.md) collection | Attendees invited to the town hall. The supported identites are [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |
| isInviteOnly | Boolean | Indicates whether the town hall is only open to invited people and groups within your organization. The **isInviteOnly** property can only be `true` if the value of the **audience** property is set to `organization`. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the town hall starts. Inherited from [virtualEvent](../resources/virtualevent.md). |

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualeventtownhall"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls
Content-Type: application/json

{     
    "displayName": "The Impact of Tech on Our Lives",
    "description": "Discusses how technology has changed the way we communicate.",
    "startDateTime": {
      "dateTime": "2023-03-30T10:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "endDateTime": {
      "dateTime": "2023-03-30T17:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "audience": "organization",
    "coOrganizers": [
      { 
        "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b", 
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c" 
      }
    ]
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
HTTP/1.1 201 Created
Content-Type: application/json

{ 
    "id": "bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba",
    "status": "draft",
    "displayName": "The Impact of Tech on Our Lives",
    "description": "Discusses how technology has changed the way we communicate.",
    "startDateTime": {
      "dateTime": "2023-03-30T10:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "endDateTime": {
      "dateTime": "2023-03-30T17:00:00", 
      "timeZone": "Pacific Standard Time" 
    },
    "audience": "organization",
    "createdBy": {
      "application": null,
      "device": null,
      "user": {
        "id": "b7ef013a-c73c-4ec7-8ccb-e56290f45f68",
        "displayName": "Diane Demoss",
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
      }
    },
    "coOrganizers": [
      { 
        "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b", 
        "displayName": "Kenneth Brown", 
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c" 
      }
    ],
    "invitedAttendees": [],
    "isInviteOnly": false
}
```
