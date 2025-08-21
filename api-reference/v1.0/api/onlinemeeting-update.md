---
title: "Update onlineMeeting"
description: "Update the properties of an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/08/2024
---

# Update onlineMeeting

Namespace: microsoft.graph

Update the properties of the specified [onlineMeeting](../resources/onlinemeeting.md) object.

For the list of properties that support updating, see the [Request body](#request-body) section.

> [!NOTE]
> If you invite a contact list of more than 150 members to a meeting, they can only access the chat during the meeting. If some people in the contact list are required attendees and the rest are optional, add them directly as participants.
> If you add a contact list that makes the chat exceed 1,000 people, you aren't able to add the list. For more information, see [Chat in Microsoft Teams meetings](https://support.microsoft.com/office/chat-in-microsoft-teams-meetings-64e2cb91-8a11-4781-94ea-fbb23f2b922f).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions for the following HTTP request:

<!-- { "blockType": "ignored" } -->

```http
PATCH /me/onlineMeetings/{meetingId}
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_update", 
  "requestUrls": ["PATCH /me/onlineMeetings/{meetingId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-update-permissions.md)]

Permissions for the following HTTP request:

<!-- { "blockType": "ignored" } -->

```http
PATCH /users/{userId}/onlineMeetings/{meetingId}
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_update_2", 
  "requestUrls": ["PATCH /users/{userId}/onlineMeetings/{meetingId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-update-2-permissions.md)]

> [!NOTE]
> To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to update online meetings on behalf of that user (with user ID specified in the request path).

## HTTP request

To update the specified **onlineMeeting** using meeting ID with delegated (`/me`) and app (`/users/{userId}/`) permission:
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/onlineMeetings/{meetingId}
PATCH /users/{userId}/onlineMeetings/{meetingId}
```

> [!NOTE]
>
> - `userId` is the object ID of a user in the [Microsoft Entra admin center > user management page](https://entra.microsoft.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more information, see [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).
> - `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

The following table lists the properties that can be updated. In the request body, supply *only* the values for properties that should be updated, with the following exceptions:

- Adjusting the start or end date/time of an online meeting always requires both **startDateTime** and **endDateTime** properties in the request body.
- The **organizer** field of the **participants** property can't be updated. The organizer of the meeting can't be modified after the meeting is created.
- Adjusting the **attendees** field of the **participants** property, such as adding or removing an attendee to the meeting, always requires the full list of attendees in the request body.

The last column indicates whether updating this property will take effect for an in-progress meeting.

| Property                    | Type                                                       | Description                                                                         | Applies to in-progress meetings?    |
|-----------------------------|------------------------------------------------------------|-------------------------------------------------------------------------------------|------------------------------------ |
| allowAttendeeToEnableCamera | Boolean                                                    | Indicates whether attendees can turn on their camera.                               | Yes                                 |
| allowAttendeeToEnableMic    | Boolean                                                    | Indicates whether attendees can turn on their microphone.                           | Yes                                 |
| allowBreakoutRooms          | Boolean                                                    | Indicates whether breakout rooms are enabled for the meeting.                       | No                                  |
| allowedLobbyAdmitters       | [allowedLobbyAdmitterRoles](../resources/onlinemeetingbase.md#allowedlobbyadmitterroles-values) | Specifies the users who can admit from the lobby. Possible values are: `organizerAndCoOrganizersAndPresenters`, `organizerAndCoOrganizers`, `unknownFutureValue`. | Yes                                 |
| allowedPresenters           | onlineMeetingPresenters                                    | Specifies who can be a presenter in a meeting.                                      | Yes                                 |
| allowLiveShare              | meetingLiveShareOptions                                    | Indicates whether live share is enabled for the meeting.                            | No                                  |
| allowMeetingChat            | meetingChatMode                                            | Specifies the mode of meeting chat.                                                 | Yes                                 |
| allowPowerPointSharing      | Boolean                                                    | Indicates whether PowerPoint live is enabled for the meeting.                       | No                                  |
| allowRecording              | Boolean                                                    | Indicates whether recording is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). | Yes                                 |
| allowTeamworkReactions      | Boolean                                                    | Indicates whether Teams reactions are enabled for the meeting.                      | Yes                                 |
| allowTranscription          | Boolean                                                    | Indicates whether transcription is enabled for the meeting. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). | Yes                                 |
| allowWhiteboard             | Boolean                                                    | Indicates whether whiteboard is enabled for the meeting.                            | No                                  |
| anonymizeIdentityForRoles   | onlineMeetingRole collection                               | Specifies whose identity is anonymized in the meeting. Possible values are: `attendee`. The `attendee` value can't be removed through a PATCH operation once added. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |No                                  |
| endDateTime                 | DateTime                                                   | The meeting end time in UTC.                                                        | No                                  |
| isEndToEndEncryptionEnabled | Boolean                                                    | Indicates whether end-to-end encryption (E2EE) is enabled for the meeting.          | No                                  |
| isEntryExitAnnounced        | Boolean                                                    | Whether or not to announce when callers join or leave.                              | Yes                                 |
| lobbyBypassSettings         | [lobbyBypassSettings](../resources/lobbybypasssettings.md) | Specifies which participants can bypass the meeting lobby.                          | Yes                                 |
| participants                | [meetingParticipants](../resources/meetingparticipants.md) | The participants associated with the online meeting. Only attendees can be updated. | No                                  |
| recordAutomatically         | Boolean                                                    | Indicates whether to record the meeting automatically.                              | No                                  |
| startDateTime               | DateTime                                                   | The meeting start time in UTC.                                                      | No                                  |
| subject                     | String                                                     | The subject of the online meeting.                                                  | No                                  |
| watermarkProtection         | [watermarkProtectionValues](../resources/watermarkprotectionvalues.md)  | Specifies whether the client application should apply a watermark to a content type. Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). |No                                  |
| broadcastSettings (deprecated) | [broadcastMeetingSettings](../resources/broadcastmeetingsettings.md)| Settings related to a live event.                                    | No                                  |

> [!NOTE]
>
>- For the list of possible values for **allowedPresenters**, **allowLiveShare**, and **allowMeetingChat**, see [onlineMeeting](../resources/onlinemeeting.md).
>- When updating the value of **allowedPresenters** to `roleIsPresenter`, include a full list of **attendees** with specified attendees' **role** set to `presenter` in the request body.

## Response

If successful, this method returns a `200 OK` response code and an updated [onlineMeeting](../resources/onlinemeeting.md) object in the response body.

## Examples

### Example 1: Update the startDateTime, endDateTime and subject

#### Request

> **Note:** The meeting ID has been shortened for readability.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"],
  "name": "update_start_end_subject"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi
Content-Type: application/json 

{
  "startDateTime": "2020-09-09T14:33:30.8546353-07:00",
  "endDateTime": "2020-09-09T15:03:30.8566356-07:00",
  "subject": "Patch Meeting Subject"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-start-end-subject-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-start-end-subject-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-start-end-subject-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-start-end-subject-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-start-end-subject-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-start-end-subject-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-start-end-subject-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "id":"MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi",
   "creationDateTime":"2020-07-03T00:23:39.444642Z",
   "startDateTime":"2020-09-09T21:33:30.8546353Z",
   "endDateTime":"2020-09-09T22:03:30.8566356Z",
   "joinWebUrl":"url",
   "subject":"Patch Meeting Subject",
   "isBroadcast":false,
   "autoAdmittedUsers":"EveryoneInCompany",
   "participants":{
      "organizer":{
         "upn":"upn",
         "role": "presenter",
         "identity":{
            "azureApplicationInstance":null,
            "applicationInstance":null,
            "application":null,
            "device":null,
            "user":{
               "id":"8716745d-77a9-4be3-afff-009e4b81658e",
               "displayName":null,
               "tenantId":"0823831b-1f1b-424b-b90a-1caa345a742a",
               "identityProvider":"AAD"
            }
         }
      }
   },
   "audioConferencing":{
      "conferenceId":"id",
      "tollNumber":"+1-900-555-0100",
      "tollFreeNumber":"+1-800-555-0100",
      "dialinUrl":"url"
   }
}
```

#### Example 2: Update the lobbyBypassSettings
> **Note:** The meeting ID has been shortened for readability.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"],
  "name": "update_lobbyBypassSettings"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi
Content-Type: application/json 

{
  "lobbyBypassSettings": {
      "isDialInBypassEnabled": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-lobbybypasssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-lobbybypasssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-lobbybypasssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-lobbybypasssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-lobbybypasssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-lobbybypasssettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-lobbybypasssettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi",
    "creationDateTime":"2020-07-03T00:23:39.444642Z",
    "startDateTime":"2020-09-09T21:33:30.8546353Z",
    "endDateTime":"2020-09-09T22:03:30.8566356Z",
    "joinWebUrl":"(redacted)",
    "subject":"Patch Meeting Subject",
    "autoAdmittedUsers": "EveryoneInCompany",
    "isEntryExitAnnounced": true,
    "allowedPresenters": "everyone",
    "videoTeleconferenceId": "(redacted)",
    "participants": {
        "organizer": {
            "upn": "(redacted)",
            "role": "presenter",
            "identity": {
                "user": {
                    "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4622",
                    "displayName": null,
                    "tenantId": "909c6581-5130-43e9-88f3-fcb3582cde38",
                    "identityProvider": "AAD"
                }
            }
        },
        "attendees": [],
    },
    "lobbyBypassSettings": {
        "scope": "organization",
        "isDialInBypassEnabled": true
    }
}
```

### Example 3: Enable end-to-end encryption on an existing online meeting

The following example shows how to enable end-to-end encryption on an existing online meeting.

> **Note:** The **isEndToEndEncryptionEnabled** property must be used with Teams policies to determine the final behavior, and policy updates can take up to 24 hours to apply. For more information, see [Require end-to-end encryption for sensitive Teams meetings](/microsoftteams/end-to-end-encrypted-meetings). 

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "enable-encryption-on-existing-online-meeting"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi
Content-Type: application/json 

{
  "isEndToEndEncryptionEnabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/enable-encryption-on-existing-online-meeting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/enable-encryption-on-existing-online-meeting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/enable-encryption-on-existing-online-meeting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/enable-encryption-on-existing-online-meeting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/enable-encryption-on-existing-online-meeting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/enable-encryption-on-existing-online-meeting-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/enable-encryption-on-existing-online-meeting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi",
  "creationDateTime": "2020-07-03T00:23:39.444642Z",
  "startDateTime": "2020-09-09T21:33:30.8546353Z",
  "endDateTime": "2020-09-09T22:03:30.8566356Z",
  "joinWebUrl": "(redacted)",
  "subject": "Patch Meeting Subject",
  "autoAdmittedUsers": "EveryoneInCompany",
  "isEndToEndEncryptionEnabled": true,
  "isEntryExitAnnounced": true,
  "allowedPresenters": "everyone",
  "videoTeleconferenceId": "(redacted)",
  "participants": {
    "organizer": {
      "upn": "(redacted)",
      "role": "presenter",
      "identity": {
        "user": {
          "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4622",
          "displayName": null,
          "tenantId": "909c6581-5130-43e9-88f3-fcb3582cde38",
          "identityProvider": "AAD"
        }
      }
    },
    "attendees": []
  },
  "lobbyBypassSettings": {
    "scope": "organization",
    "isDialInBypassEnabled": true
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2020-7-16 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Patch online meeting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
