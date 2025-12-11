---
title: "Update virtualEventTownhall"
description: "Update the properties of a virtualEventTownhall object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# Update virtualEventTownhall
Namespace: microsoft.graph

Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

Only the **Organizer** and **Co-organizer** can make changes to a townhall event.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventtownhall_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /solutions/virtualEvents/townhalls/{id}
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
| coOrganizers  | [communicationsUserIdentity](../resources/communicationsuseridentity.md) collection | Identity information of coorganizers of the virtual event. |
| description | [itemBody](../resources/itembody.md) | Description of the virtual event. |
| displayName | String | Display name of the virtual event. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the virtual event ends. |
| invitedAttendees | [identity](../resources/identity.md) collection | The identities of the attendees invited to the town hall. The supported identities are: [communicationsGuestIdentity](../resources/communicationsguestidentity.md) and [communicationsUserIdentity](../resources/communicationsuseridentity.md). |
| settings | [virtualEventSettings](../resources/virtualeventsettings.md) | The virtual event settings. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the virtual event starts. |

## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_virtualeventtownhall"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-virtualeventtownhall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-virtualeventtownhall-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-virtualeventtownhall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-virtualeventtownhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-virtualeventtownhall-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-virtualeventtownhall-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-virtualeventtownhall-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba",
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
  ],
  "settings": {
    "isAttendeeEmailNotificationEnabled": false
  },
  "externalEventInformation": [
    {
      "applicationId" : "1b7ba4d1-c377-4b2f-ad0e-a3fc50bc987b",
      "externalEventId": "myExternalEventId"
    }
  ]
}
```
