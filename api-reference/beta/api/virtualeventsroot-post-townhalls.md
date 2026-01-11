---
title: "Create virtualEventTownhall"
description: "Create a new virtualEventTownhall object in draft mode."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/18/2024
---

# Create virtualEventTownhall

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object in draft mode.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventsroot_post_townhalls" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-post-townhalls-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/townhalls
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Accept-Language| [Acceptable human languages for the response](/concepts/search-concept-acceptlanguage-header.md). Required. |

## Request body

In the request body, supply a JSON representation of the supported derived types of [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

You can specify the following properties when you create a [virtualEventTownhall](../resources/virtualeventtownhall.md).

|Property|Type|Description|
|:---|:---|:---|
| audience | [meetingAudience](../resources/virtualeventtownhall.md#meetingaudience-values) | The audience to whom the town hall is visible. |
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | The identity information of coorganizers of the town hall. |
| description | [itemBody](../resources/itembody.md) | A description of the town hall. |
| displayName | String | Display name of the town hall. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time when the town hall ends. |
| invitedAttendees | [identity](../resources/identity.md) collection | The identities of the attendees invited to the town hall. The supported identities are: [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |
| isInviteOnly | Boolean | Indicates whether the town hall is only open to invited people and groups within your organization. The **isInviteOnly** property can only be `true` if the value of the **audience** property is set to `organization`. |
| settings | [virtualEventSettings](../resources/virtualeventsettings.md) | The town hall settings. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time when the town hall starts. |

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualeventtownhall"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls
Content-Type: application/json
Accept-Language: en-US

{     
    "displayName": "The Impact of Tech on Our Lives",
    "description": {
      "contentType": "text",
      "content": "Discusses how technology has changed the way we communicate."
    },
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
    ],
    "settings": {
      "isAttendeeEmailNotificationEnabled": false
    }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualeventtownhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhall"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json
Accept-Language: en-US

{ 
    "id": "bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba",
    "status": "draft",
    "displayName": "The Impact of Tech on Our Lives",
    "description": {
      "contentType": "text",
      "content": "Discusses how technology has changed the way we communicate."
    },
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
    "settings": {
      "isAttendeeEmailNotificationEnabled": false
    },
    "isInviteOnly": false,
    "externalEventInformation": []
}
```
