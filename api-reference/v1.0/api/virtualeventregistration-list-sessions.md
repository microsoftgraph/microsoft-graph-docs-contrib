---
title: "List sessions for a virtual event registration"
description: "Get a list of sessions that a registrant registered for in a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/06/2024
---

# List sessions for a virtual event registration
Namespace: microsoft.graph

Get a list of [sessions](../resources/virtualeventsession.md) summaries that a registrant registered for in a [webinar](../resources/virtualeventwebinar.md). A session summary contains only the `endDateTime`, `id`, `joinWebUrl`, `startDateTime`, and `subject` of a virtual event session. The rest of session properties will be null.

To get all the properties of a **virtualEventSession**, use the [Get virtualEventSession](../api/virtualeventsession-get.md) method. 

> [!NOTE]
> 
> Virtual event webinars can only have a singular virtual event session. A single session summary will be returned in the collection.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistration_list_sessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-list-sessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/virtualEvents/webinars/{webinarId}/registrations/{registrationId}/sessions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventSession](../resources/virtualeventsession.md) objects in the response body. 

Currently, only the following properties of a **virtualEventSession** object contain data when the object is returned by this method. All other properties are null. To get all the properties of a **virtualEventSession**, use the [Get virtualEventSession](../api/virtualeventsession-get.md) method.

| Property              | Type                                          | Description    |
| :-------------------- | :-------------------------------------------- | :------------------------------------ |
| endDateTime           | [DateTimeTimeZone](../resources/datetimetimezone.md) | The virtual event session end time.   |
| id | String | The unique identifier of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md).    |
| joinWebUrl | String | The join URL of the virtual event session. Read-only. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |
| startDateTime | [DateTimeTimeZone](../resources/datetimetimezone.md) | The virtual event session start time. |
| subject | String | The subject of the virtual event session. Inherited from [onlineMeetingBase](../resources/onlineMeetingBase.md). |

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_virtualeventregistrationsessions"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations/127962bb-84e1-7b62-fd98-1c9d39def7b6/sessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualeventregistrationsessions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualeventregistrationsessions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualeventregistrationsessions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualeventregistrationsessions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualeventregistrationsessions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualeventregistrationsessions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualeventregistrationsessions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventSession)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventSession",
      "id": "8d62dd52-4dff-4c75-96a9-f905cc3ff942",
      "startDateTime": "2023-08-08T12:30:00Z",
      "endDateTime": "2023-08-09T22:00:00Z",
      "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZDVjNzk3OWEtYjc2NS00NTA1LTkyMzQtYTYzMGI5YmFmMjM5%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%221cd068e4-5b08-4e75-a7f9-7b4e067a0820%22%7d",
      "subject": "Session one",
      "isBroadcast": null,
      "broadcastSettings": null,
      "capabilities": [],
      "audioConferencing": null,
      "chatInfo": null,
      "videoTeleconferenceId": null,
      "externalId": null,
      "joinMeetingIdSettings": null,
      "lobbyBypassSettings": null,
      "isEntryExitAnnounced": null,
      "allowedPresenters": null,
      "allowAttendeeToEnableMic": null,
      "allowAttendeeToEnableCamera": null,
      "allowMeetingChat": null,
      "shareMeetingChatHistoryDefault": null,
      "allowTeamworkReactions": null,
      "recordAutomatically": null,
      "watermarkProtection": null,
      "allowParticipantsToChangeName": null
    }
  ]
}
```
