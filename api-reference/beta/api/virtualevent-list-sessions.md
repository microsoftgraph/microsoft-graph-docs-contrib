---
title: "List sessions"
description: "Get a list of all virtualEventSession objects under a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.topic: reference
---

# List sessions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all [virtualEventSession](../resources/virtualeventsession.md) objects under a virtual event.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventsession_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsession-list-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registrants' information from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
To list all sessions of a webinar:

``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions
```

## Optional query parameters

This method doesn't support the OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

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
  "name": "list_virtualeventsessions",
  "sampleKeys": ["f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd/sessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualeventsessions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-virtualeventsessions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualeventsessions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualeventsessions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualeventsessions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualeventsessions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualeventsessions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualeventsessions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
``` http
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
