---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Listing callRecords participant_v2 might not return all participants

<!-- {
  "ms.author": "mamcgrath",
  "ms.reviewer": ""
} -->

In some edge cases, a request to list **participants_v2** for a **callRecord** might return an incomplete list.

#### Workaround

You can utilize the existing **participants** property of a **callRecord** for a complete list of participants.

### Communications Calling SDK: Inconsistent recorded participant number shown on teams client when bot grouping is enabled

<!-- {
  "ms.author": "rahulva",
  "ms.reviewer": ""
} -->

When recording bot applications enable Bot Grouping, the number of participants shown by the Teams client as being recorded isn't accurate. Because the participants are grouped, the displayed number of participants being recorded is lower than the actual number.

#### Workaround

Disable bot grouping to show an accurate count.

### callRecords API represents application participants as users in communicationsIdentitySet

<!-- {
  "ms.author": "mamcgrath",
  "ms.reviewer": ""
} -->

In the **callRecord** participant resource, application/bot participants are currently represented by the [communicationsUserIdentity](/graph/api/resources/communicationsuseridentity) instead of [communicationsApplicationIdentity](/graph/api/resources/communicationsapplicationidentity).

#### Workaround

Use the user agent **headerValue** on the [participantEndpoint](/graph/api/resources/callrecords-participantendpoint) resource in a **callRecord** session to identify application participants and see additional details on the application identity.

### Communication Calling SDK: Support for multi-endpoint use case in delta roster notification mode is missing

<!-- {
  "ms.author": "rahulva",
  "ms.reviewer": ""
} -->

When the same application or user is joining the same meeting using multiple endpoints, and the roster notification mode is delta roster, the participant roster updates provided by Communications SDK might not capture the additional endpoints added to the ongoing call.

#### Workaround

Legacy mode for roster supports the multi-endpoint use case. Use the SDK version 1.2.0.7270 or earlier.

### Communication Calling SDK: Webhook message processing exception: System.Security.Cryptography.CryptographicException

<!-- {
  "ms.author": "rahulva",
  "ms.reviewer": ""
} -->

The release of the KBs introduced an issue with applications developed with the Communication Calling SDKs.

The Microsoft Graph `AnswerAsync` method throws an exception when the bot tries to answer incoming calls. This is related to the following Windows updates:

- Wk22 - KB5038282
- Wk19 - KB5038283

For details, see [SHA256 ComputeHash started throwing - Microsoft Community](https://techcommunity.microsoft.com/t5/windows-server-for-it-pro/sha256-computehash-started-throwing/m-p/4159498).

#### Workaround

Roll back the KBs pending an updated release of the SDK.

### Change tracking requests for APIs that export online meeting artifacts return items that are already synced

<!-- {
  "ms.author": "sanjayra",
  "ms.reviewer": ""
} -->

Change tracking (`/delta`) requests to [getAllTranscripts](/graph/api/callrecording-delta) or [getAllRecordings](/graph/api/calltranscript-delta) might return items that were already synced in earlier requests.

This happens when the meeting had other non-related updates, such as adding participants, notes, or files.

#### Workaround

For every item in the response, check the **createdDateTime** of the recording or transcript and compare it with the previous sync timestamp. If the **createdDateTime** is before the last sync timestamp, the item is already synced and can be ignored.

### APIs that export online meeting artifacts don't return recordings for meetings without transcriptions enabled

<!-- {
  "ms.author": "sanjayra",
  "ms.reviewer": ""
} -->

The [getAllRecordings](/graph/api/onlinemeeting-getallrecordings) API does not return recordings for meetings that don't have transcription enabled.

### APIs that export online meeting artifacts might not return nextLink when the request uses the $top query parameter

<!-- {
  "ms.author": "sanjayra",
  "ms.reviewer": ""
} -->

When you call the [getAllRecordings](/graph/api/onlinemeeting-getallrecordings) or [getAllTranscripts](/graph/api/onlinemeeting-getalltranscripts) APIs, passing the `$top` filter might not return the `@odata.nextLink`, even when there are more items to export.

#### Workaround

Do not pass `$top` query parameter until the issue is fixed.

### List team members API fails with 401 errors in newly created tenants

<!-- {
  "ms.author": "pkantevari",
  "ms.reviewer": ""
} -->

When a newly created tenant sends a [list members of team](/graph/api/team-list-members) request using advanced Azure AD query capabilities, an HTTP 401 error occurs.

#### Workaround

1. Call the [list teams](/graph/api/teams-list) API and wait for a few seconds.
2. Call `/teams/{id}/members` and check for a successful response.

### Clone team method does not include all owners of the source team in the cloned team

<!-- {
  "ms.author": "nkramer",
  "ms.reviewer": ""
} -->

When you call the [clone team](/graph/api/team-clone) method, if the source team contains more than one owner, only one owner is preserved in the cloned team. The other owners become members of the new cloned team. It is not possible to choose or configure which owner is retained as the owner of the new team.

#### Workaround

Use the [Add members](/graph/api/team-post-members) method after you clone the team to update the original owners from members back to owners.

### Create channel can return an error response

<!-- {
  "ms.author": "nkramer",
  "ms.reviewer": ""
} -->

When you create a channel, if you use special characters in your channel name, the [Get filesFolder](/graph/api/channel-get-filesfolder) API will return a `400 Bad Request` error response. When you create a channel, make sure that the **displayName** for the channel does not:

- Include any of the following special characters: `~ # % & * { } + / \ : < > ? | ' "`.
- Start with an underscore (`_`) or period (`.`), or end with a period (`.`).

### Unable to access a cross-tenant shared channel when the request URL contains tenants/{cross-tenant-id}

<!-- {
  "ms.author": "yaagraw",
  "ms.reviewer": ""
} -->

The API calls for `teams/{team-id}/incomingChannels` and `teams/{team-id}/allChannels` return the `@odata.id` property which you can use to access the channel and run other operations on the channel object. If you call the URL returned from the `@odata.id` property, the request fails with the following error when it tries to access the cross-tenant shared channel:

```http
GET /tenants/{tenant-id}/teams/{team-id}/channels/{channel-id}
```

```json
{
    "error": {
        "code": "BadRequest",
        "message": "TenantId in the optional tenants/{tenantId} segment should match the tenantId(tid) in the token used to call Graph.",
        "innerError": {
            "date": "2022-03-08T07:33:50",
            "request-id": "dff19596-b5b2-421d-97d3-8d4b023263f3",
            "client-request-id": "32ee2cbd-27f8-2441-e3be-477dbe0cedfa"
        }
    }
}
```

#### Workaround

Remove the `/tenants/{tenant-id}` part from the URL before you call the API to access the cross-tenant shared channel.

### Requests to filter team members by role require a parameter

<!-- {
  "ms.author": "anandjo",
  "ms.reviewer": ""
} -->

All the requests to filter team members by roles expect either a **skipToken** parameter or a **top** parameter in the request, but not both. If both the parameters are passed in the request, the **top** parameter will be ignored.

### Unable to filter team members by roles

<!-- {
  "ms.author": "chpalm",
  "ms.reviewer": ""
} -->

Role query filters along with other filters `GET /teams/team-id/members?$filter=roles/any(r:r eq 'owner') and displayName eq 'dummy'` might not work. The server might respond with a `BAD REQUEST`.

### View meeting details menu is not available on Microsoft Teams client

<!-- {
  "ms.author": "anandjo",
  "ms.reviewer": ""
} -->

The Microsoft Teams client does not show the **View Meeting details** menu for channel meetings created via the cloud communications API.

### Sensitivity label does not show up in the Teams UI

<!-- {
  "ms.author": "anandjo",
  "ms.reviewer": ""
} -->

Sensitivity Labels that are applied to Teams at times do not show up in the Teams UI, even though it can clearly be seen in both the underlying SharePoint site and in the Admin Center.

### Some properties for chat members might be missing in the response to a GET request

<!-- {
  "ms.author": "",
  "ms.reviewer": ""
} -->

In certain instances, the **tenantId**/**email**/**displayName** property for the individual members of a chat might not be populated on a `GET /chats/chat-id/members` or `GET /chats/chat-id/members/membership-id` request.

### Get chats limit updated for expand members

<!-- {
  "ms.author": "kanchm",
  "ms.reviewer": ""
} -->

This API works differently in one or more national clouds. For details, see [Implementation differences in national clouds](/graph/teamwork-national-cloud-differences). When `$expand=members` is included, this API returns a maximum of 25 items, even if a larger `$top` value is specified.

### layoutType property returns `null` when listing all channels

<!-- {
  "ms.author": "jsinghmokha",
  "ms.reviewer": ""
} -->

In the current beta release, the **layoutType** property returns `null` when listing all channels.
