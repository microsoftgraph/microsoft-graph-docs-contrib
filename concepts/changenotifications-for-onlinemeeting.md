---
title: "Get change notifications for Microsoft Teams meeting call updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to call started/ended and call roster updates for Microsoft Teams online meetings."
author: "benlee-msft"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams meeting call event updates

Change notifications in Microsoft Graph enable you to subscribe to call started, call ended, and roster updated for Microsoft Teams online meetings. Change notifications provide a low-latency model by allowing you to maintain a subscription. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload. 

A subscription has a max expiry period of three days. To persist the subscription for more than this period, a subscription renewal request must be made. For more information, see [Update subscription](/graph/api/subscription-update). Alternatively, a user can wait for the subscription to expire and create a new subscription with the same meeting resource.

This resource supports notifications with resource data. For more information about setting up notifications with resource data, see [Set up change notifications that include resource data](/graph/webhooks-with-resource-data).

## Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All | beta |

## Subscribe to online meeting call events

To get change notifications for the call events for a meeting, subscribe to `/communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents`, where the `joinWebUrl` is the URL-encoded value of the meeting join URL.

For example, the `joinWebUrl` in the following URL must be acquired for an online meeting. 

`https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZmYwZTEyYjctZjA5MS00OTkzLWJhNzEtYzFiZDVjNGE0OGFj%40thread.v2/0?context=%7b%22Tid%22%3a%22909c6581-5130-43e9-88f3-fcb3582cde37%22%2c%22Oid%22%3a%22048c94fb-dda6-48b8-9fc8-6740ee418fb9%22%7d`

To park a subscription, the argument must be URL encoded and used as the `joinWebUrl` in the resource property, as shown in the following example.

`https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253ameeting_ZmYwZTEyYjctZjA5MS00OTkzLWJhNzEtYzFiZDVjNGE0OGFj%2540thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%2522909c6581-5130-43e9-88f3-fcb3582cde37%2522%252c%2522Oid%2522%253a%2522048c94fb-dda6-48b8-9fc8-6740ee418fb9%2522%257d`

> [!NOTE]
> Replace `{JoinWebUrl}` with the actual URL-encoded value when you specifiy the resource. The JoinWebURL for the meeting is included in the **joinWebUrl** property of the [onlineMeeting](/graph/api/resources/onlineMeeting) resource, or in the Teams client for a meeting.

Set `includeResourceData` to `true` and provide appropriate values for `encryptionCertificate` and `encryptionCertificateId` to subscribe to rich notifications. Basic notifications without change data are sent if these properties aren't provided.

### Subscription to rich notifications payload sample

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings(joinWebUrl='https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253ameeting_ZmYwZTEyYjctZjA5MS00OTkzLWJhNzEtYzFiZDVjNGE0OGFj%2540thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%2522909c6581-5130-43e9-88f3-fcb3582cde37%2522%252c%2522Oid%2522%253a%2522048c94fb-dda6-48b8-9fc8-6740ee418fb9%2522%257d')/meetingCallEvents",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

> [!NOTE]
> Subscription to basic notifications are available for change notifications for meetings calls. However, because basic notifications do not contain data related to the details of changes besides the id of resource and there is no Microsoft Graph API available to get meeting call data with this id, we highly recommend that subscriptions are created for rich notifications for change notifications in meeting calls. for more information, see the  **Rich notifications** section.

## Rich notifications
Subscribing to rich notifications for change events in an active meeting call allows details of changes encrypted in notification payload.

### Rich notification payload example
```json
{
  "value": [{
    "subscriptionId": "{Subscription id}",
    "clientState": "{secret client state}",
    "changeType": "updated",
    "tenantId": "{Organization/Tenant id}",
    "resource": "communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
    "subscriptionExpirationDateTime": "2022-02-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
      "@odata.type": "#microsoft.graph.callevent",
      "id": "{notificationId}'"
    },
    "organizationId": "{Organization/Tenant id}",
    "encryptedContent": {
      "data": "{Encrypted content}",
      "dataSignature": "{Encrypted data signature}",
      "dataKey": "{Encrypted data key for encrypting content}",
      "encryptionCertificateId": "{User specified id of encryption certificate}",
      "encryptionCertificateThumbprint": "{Encrpytion certification thumbprint}"
    }
  }],
  "validationTokens": ["{Validation Tokens}"]
}
```

#### Event notifications types

The following are the supported meeting events:
- callStarted - Events for when the meeting call started.
- callEnded - Events for when the meeting call ended.
- rosterUpdated - Events for when a participant joins and exits the call or lobby.
  - The **rosterUpdated** event contains a collection of meeting call participant changes in **participants@delta**. This collection depicts user participant changes in the meeting call roster. Participants with the **removedState** property represent participants that exited the collection. See [participant](/graph/api/resources/participant) for more details on participants information.
#### Decrypted payload examples

#### CallStarted
```json
{
  "@odata.type":"#microsoft.graph.callevent",
  "@odata.id":"communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
  "id":"{notificationId}'",
  "eventType":"callStarted",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
}

```
#### CallEnded
```json
{
  "@odata.type":"#microsoft.graph.callevent",
  "@odata.id":"communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
  "id":"{notificationId}",
  "eventType":"callEnded",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
}
```

#### RosterUpdated - Participant joins into call or lobby modality
```json
{
  "@odata.type": "#microsoft.graph.callevent",
  "@odata.id": "communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
  "id": "{notificationId}",
  "eventType": "rosterUpdated",
  "eventDateTime": "2022-02-28T00:00:00.0000000Z",
  "participants@delta": [
    {
      "info": {
        "identity": {
          "user": {
            "id": "f3ce5e01-0724-43c7-ae4d-80ca18703a96",
            "displayName": "A user roster update in the call",
            "tenantId": "f69f5191-20ae-4093-8dae-3ec09edeb253"
          }
        }
      },
      "isInLobby": false,
      "id": "e1018298-976a-4956-93e8-f58e43b0016c"
    },
    {
      "info": {
        "identity": {
          "user": {
            "id": "e8bbbe0e-6e3d-42db-9082-213abbe8ee5c",
            "displayName": "User roster update in the lobby of the call",
            "tenantId": "f69f5191-20ae-4093-8dae-3ec09edeb253"
          }
        }
      },
      "isInLobby": true,
      "id": "a7cc3ddb-a469-410d-8057-44dba3b0c073"
    }
  ]
}
```

#### RosterUpdated - Participant enters an inactive state (not in lobby or Call)
```json
{
  "@odata.type": "#microsoft.graph.callevent",
  "@odata.id": "communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
  "id": "{notificationId}",
  "eventType": "rosterUpdated",
  "eventDateTime": "2022-02-28T00:00:00.0000000Z",
  "participants@delta": [
    {
      "info": {
        "identity": {
          "user": {
            "id": "f3ce5e01-0724-43c7-ae4d-80ca18703a96",
            "displayName": "A user change within the meeting call",
            "tenantId": "f69f5191-20ae-4093-8dae-3ec09edeb253"
          }
        }
      },
      "isInLobby": false,
      "removedState": {
        "reason": "Participant has entered an inactive state in the roster."
      },
      "id": "e1018298-976a-4956-93e8-f58e43b0016c"
    }
  ]
}
```

#### RosterUpdated - participant exits the call
```json
{
  "@odata.type": "#microsoft.graph.callevent",
  "@odata.id": "communications/onlineMeetings(joinWebUrl='{joinWebUrl}')/meetingCallEvents",
  "id": "{notificationId}",
  "eventType": "rosterUpdated",
  "eventDateTime": "2022-02-28T00:00:00.0000000Z",
  "participants@delta": [
    {
      "info": {
        "identity": {
          "user": {
            "id": "e98eb11c-8385-445e-8b19-4a2f169ac5bc",
            "displayName": "User that is leaving the call",
            "tenantId": "f69f5191-20ae-4093-8dae-3ec09edeb253"
          }
        }
      },
      "isInLobby": false,
      "removedState": {
        "reason": "Participant has left the meeting call."
      },
      "id": "347040dd-aa51-4ada-8a44-510c65a3a2d3"
    }
  ]
}
```

## Related content

- [Microsoft Graph change notifications](/graph/webhooks)
- [Microsoft Teams API overview](/graph/teams-concept-overview)
- [Online meeting resource](/graph/api/resources/onlineMeeting)
- [Meeting notification C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-meeting-notification/csharp)
- [Meeting notification Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-meeting-notification/csharp)
