---
title: "Get change notifications for teams and channels using Microsoft Graph"
description: "Learn how to get notifications for changes (create, update, and delete) for teams and channels using Microsoft Graph APIs."
author: "anandab"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Get change notifications for teams and channels using Microsoft Graph

Change notifications enable you to subscribe to changes (create, update, and delete) to teams and channels. You can get notified whenever a [team](/graph/api/resources/team) or [channel](/graph/api/resources/channel) is created, updated, or deleted. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

Continue with this article about scenarios for the **team** or **channel** resource. Or, find out about [change notifications for other Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise your subscription request will fail with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to changes in any team at tenant level

To get change notifications for all changes (create, update, and delete) related to any team in a tenant, subscribe to `/teams`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to changes in a particular team


To get change notifications for all changes related to a particular team in a tenant, subscribe to `/teams/{team-id}`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamSettings.Read.Group*, TeamSettings.ReadWrite.Group*, Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All    |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```


## Subscribe to changes in any channel at tenant level

To get change notifications for all changes (create, update, and delete) related to any [channel](/graph/api/resources/channel) in a tenant, subscribe to `/teams/getAllChannels`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

Continue with this article about scenarios for the [channel](/graph/api/resources/channel) or [chat](/graph/api/resources/chat) context. Or, find out about [change notifications for other Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).



### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/getAllChannels",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to changes in any channel of a particular team


To get change notifications for all changes related to any channel in a particular team, subscribe to `/teams/{team-id}/channels`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

The following are examples of events that generate notifications for this resource:
- The display name of a channel is updated in the team.
- A private channel is created in the team.
- A shared channel owned by this team is shared or unshared with another team.
- A shared channel owned by another team is shared with this team.
- The properties of a channel, such as **isFavoriteByDefault** or **description**, are updated.
- A channel is deleted.

>**Note:** For delegated context, only the authorized users will receive notifications for private/shared channels. For example, anyone who belongs to the team (except guests) can subscribe to this resource in delegated context, but only the users who have access to private and shared channels will receive notifications for events happening in those channels.


### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelSettings.Read.Group*, ChannelSettings.ReadWrite.Group*, Channel.ReadBasic.All, ChannelSettings.Read.All, ChannelSettings.ReadWrite.All   |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```


### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for a property change in a team.

```json
{
    "value": [{
        "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "teams('fb82c19a-0f6d-41ed-90f0-cbb29a476ede')",
        "resourceData": {
            "id": "1612289765949",
            "@odata.type": "#Microsoft.Graph.Team",
            "@odata.id": "teams('fb82c19a-0f6d-41ed-90f0-cbb29a476ede')"
        },
        "encryptedContent": {
            "data": "<<--EncryptedContent-->",
            "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
            "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
            "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
        },
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
    }],
    "validationTokens": ["<<--ValidationTokens-->>"]
}
```



The decrypted notification payload looks like the following. The payload conforms to the [teams](/graph/api/resources/team?preserve-view=true) schema. The payload is similar to that returned by GET operations.

>**Note:** [discoverySettings](/graph/api/resources/teamdiscoverysettings?preserve-view=true) and [classSettings](/graph/api/resources/teamclasssettings?preserve-view=true) aren't exposed in payload data.

```json
{
  "id": "4c533ad3-e1dd-4277-a672-92ab64ed225c",
  "createdDateTime": "2021-03-18T10:31:14.597Z",
  "displayName": "Sample name",
  "description": "Sample description",
  "internalId": "19:2077546f765a42c1ba71236f4df70aa2@thread.tacv2",
  "specialization": "none",
  "visibility": "public",
  "webUrl": "https://teams.microsoft.com/l/team/19:2077546f724a42c1ba71236f4df79aa2%40thread.tacv2/conversations?groupId=4c533ad3-e1dd-4277-a672-92ab64ed225c&tenantId=0f2e8f59-862a-483b-9ca8-82a10665e17d",
  "isArchived": false,
  "isMembershipLimitedToOwners": false,
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowCreatePrivateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true
  },
  "guestSettings": {
    "allowCreateUpdateChannels": false,
    "allowDeleteChannels": false
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "moderate",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  }
}
```


For notifications with resource data, the payload looks like the following. This payload is for a property change in a channel.

```json
{
    "value": [{
        "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "teams('fb82c19a-0f6d-41ed-90f0-cbb29a476ede')/channels('19:01f39f5ac52f45fb9a7ce01cedd57b1f@thread.tacv2')",
        "resourceData": {
            "id": "19:01f39f5ac52f45fb9a7ce01cedd57b1f@thread.tacv2",
            "@odata.type": "#Microsoft.Graph.Channel",
            "@odata.id": "teams('fb82c19a-0f6d-41ed-90f0-cbb29a476ede')/channels('19:01f39f5ac52f45fb9a7ce01cedd57b1f@thread.tacv2')"
        },
        "encryptedContent": {
            "data": "<<--EncryptedContent-->",
            "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
            "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
            "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
        },
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
    }],
    "validationTokens": ["<<--ValidationTokens-->>"]
}
```
  

The decrypted notification payload looks like the following. The payload conforms to the [channel](/graph/api/resources/channel?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "19:a3f841d969cd4ae0a7cbe847fc10b371@thread.tacv2",
  "createdDateTime": "2020-02-14T01:10:03.592Z",
  "displayName": "General",
  "description": "Sample Channel description",
  "isFavoriteByDefault": true,
  "email": "",
  "webUrl": "https://teams.microsoft.com/l/channel/19%3Aa3f841d969cd4ae0a7cbe847fc10b371%40thread.tacv2/General?groupId=7ed9bdab-9c7d-4c10-a25d-3f4ff0e34577&tenantId=0f2d8f49-862a-493b-9ca8-82a10637e17d",
  "membershipType": "standard",
  "moderationSettings": null
}
```


### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the message content. Subscriptions for notifications without resource data don't require an encryption certificate (because Microsoft Graph doesn't send the actual resource data).

For notifications without resource data, the payload looks like the following. This payload is for a property change in a team.

```json
{
  "subscriptionId": "9f9d1ed0-c9cc-42e7-8d80-a7fc4b0cda3c",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2021-02-02T11:26:41.0537895-08:00",
  "resource": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')",
  "resourceData": {
    "id": "1612293113399",
    "@odata.type": "#Microsoft.Graph.Teams",
    "@odata.id": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')"
  }
}
```

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the message. GET calls always return the current state of the message. If the message is changed between when the notification is sent and when the message is retrieved, the operation returns the updated message.


>**Note:** Channel email address isn't returned in the payload.

For notifications without resource data, the payload looks like the following. This payload is for a property change in a team.

```json
{
  "id": "19:a3f841d969cd4ae0a7cbe847fc10b371@thread.tacv2",
  "createdDateTime": "2020-02-14T01:10:03.592Z",
  "displayName": "General",
  "description": "Sample Channel description",
  "isFavoriteByDefault": true,
  "email": "",
  "webUrl": "https://teams.microsoft.com/l/channel/19%3Aa3f841d969cd4ae0a7cbe847fc10b371%40thread.tacv2/General?groupId=7ed9bdab-9c7d-4c10-a25d-3f4ff0e34577&tenantId=0f2d8f49-862a-493b-9ca8-82a10637e17d",
  "membershipType": "standard",
  "moderationSettings": null
}
```

## Related content

- [Microsoft Graph change notifications](change-notifications-overview.md)
- [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
- [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
- [Get change notifications for chats using Microsoft Graph](teams-changenotifications-chat.md)
- [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
- [Change notifications team or channel C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification-team-channel/csharp)
- [Change notifications team or channel Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-change-notification-team-channel/nodejs)
