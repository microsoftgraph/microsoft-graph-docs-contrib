---
title: "Get virtualEventRegistration"
description: "Get the properties and relationships of a virtual event registration."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/15/2024
---


# Get virtualEventRegistration
Namespace: microsoft.graph

Get the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-get-permissions.md)]

> [!NOTE]
>
> - To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registration records from virtual events created by that specific user. 
> - The `VirtualEvent.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/virtualEvents/webinars/{webinarId}/registrations/{registrationId}
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventRegistration](../resources/virtualeventregistration.md) object in the response body.

## Examples

### Example 1: Get a webinar registration by ID

The following example shows how to get a webinar registration by registration ID.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistration"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations/127962bb-84e1-7b62-fd98-1c9d39def7b6
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualeventregistration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-virtualeventregistration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualeventregistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualeventregistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualeventregistration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-virtualeventregistration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-virtualeventregistration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
  "userId": "String",
  "firstName": "Emilee",
  "lastName": "Pham",
  "email": "EmileeMPham@contoso.com",
  "externalRegistrationInformation": {
    "referrer": "Fabrikam",
    "registrationId": "myExternalRegistrationId"
  },
  "status": "registered",
  "registrationDateTime": "2023-03-07T22:04:17",
  "cancelationDateTime": null,
  "registrationQuestionAnswers": [
    {
      "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
      "displayName": null,
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "Seattle"
      ]
    },
    {
      "questionId": "4577afdb-8bee-4219-b482-04b52c6b855c",
      "displayName": null,
      "value": null,
      "booleanValue": true,
      "multiChoiceValues": []
    },
    {
      "questionId": "80fefcf1-caf7-4cd3-b8d7-159e17c47f20",
      "displayName": null,
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "Cancun",
        "Hoboken",
        "Beijing"
      ]
    }
  ]
}
```

### Example 2: Get a webinar registration by ID and include sessions

The following example shows how to get a webinar registration by registration ID and use `$expand` to include **sessions**.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistration_sessions"
}
-->
```http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvent/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21/registrations/127962bb-84e1-7b62-fd98-1c9d39def7b6?$expand=sessions
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
  "userId": "String",
  "firstName": "Emilee",
  "lastName": "Pham",
  "email": "EmileeMPham@contoso.com",
  "externalRegistrationInformation": {
    "referrer": "Fabrikam",
    "registrationId": "myExternalRegistrationId"
  },
  "status": "registered",
  "registrationDateTime": "2025-01-07T22:04:17",
  "cancelationDateTime": null,
  "registrationQuestionAnswers": [
    {
      "questionId": "95320781-96b3-4b8f-8cf8-e6561d23447a",
      "displayName": "Which city do you currently work in?",
      "value": null,
      "booleanValue": null,
      "multiChoiceValues": [
        "Seattle"
      ]
    }
  ],
  "sessions@odata.navigationLink": "/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21/registrations/127962bb-84e1-7b62-fd98-1c9d39def7b6/sessions",
  "sessions": [
    {
      "@odata.type": "#microsoft.graph.virtualEventSession",
      "id": "8d62dd52-4dff-4c75-96a9-f905cc3ff942",
      "startDateTime": "2025-01-08T12:30:00Z",
      "endDateTime": "2025-01-09T22:00:00Z",
      "videoOnDemandWebUrl": "https://df.events.teams.microsoft.com/webinars/webinarId/sessions/session1",
      "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZDVjNzk3OWEtYjc2NS00NTA1LTkyMzQtYTYzMGI5YmFmMjM5%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%221cd068e4-5b08-4e75-a7f9-7b4e067a0820%22%7d",
      "subject": "Session one",
      "participants": {
        "@odata.type": "microsoft.graph.meetingParticipants"
      },
      "isBroadcast": null,
      "broadcastSettings": null,
      "capabilities": [],
      "audioConferencing": null,
      "chatInfo": {
        "threadId": "19:meeting_ZDVjNzk3OWEtYjc2NS00NTA1LTkyMzQtYTYzMGI5YmFmMjM5@thread.v2",
        "messageId": "0",
        "replyChainMessageId": null
      },
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

