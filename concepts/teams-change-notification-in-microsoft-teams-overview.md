---
title: "Change notifications for Microsoft Teams resources"
description: "Subscribe to resource and resource data changes in Microsoft Teams using the Microsoft Graph API. Learn about change notification types and payloads."
author: "anandab-msft"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Change notifications for Microsoft Teams resources

Change notifications for Microsoft Teams resources using Microsoft Graph enable you to subscribe to a resource's changes (create, update, and delete). Change notifications provide a low latency model, allowing you to maintain a [subscription](/graph/api/resources/change-notifications-api-overview). You can also get the resource data in the notifications and avoid calling the API to get the payload.

> [!NOTE]
> The maximum time a subscription can last is 60 minutes; however, subscriptions can be renewed until the caller has permission to access the resource.

## Change notification types

Microsoft Teams supports two types of change notifications:

* **Change notification to track all changes related to a resource across the tenant:** For example, you can subscribe to changes in messages in any channel across the tenant and get notified whenever a message is created, updated, or deleted in any channel in the tenant. These notifications might have [licensing and payment requirements](/graph/teams-licenses), such as change notifications for [messages](teams-changenotifications-chatmessage.md) and [membership](teams-changenotifications-chatMembership.md).

* **Change notification to track all changes for a specific resource:** For example, you can subscribe to changes in messages in a particular channel and get notified whenever a message is created, updated, or deleted.

For details about which resources support which types of change notifications, see [Microsoft Graph change notifications](change-notifications-overview.md).

## Supported resources

The following table lists the Microsoft Teams resources that support change notifications and their corresponding resource paths. Apply the resource path for your scenario as specified when [creating a subscription](/graph/api/subscription-post-subscriptions). The type of the resource path payload is the type under the "Resource" column or a collection of that type.

> [!NOTE]
> Subscriptions to resources marked with an asterisk (`*`) are only available on the `/beta` endpoint.

| **Resource** | **Supported resource paths** | **Resource data can be included in notifications** |
|:----------------|:------------|:-----------------------------------------|
| Teams [callRecording](/graph/api/resources/callrecording) | All recordings in an organization: `communications/onlineMeetings/getAllRecordings`  <br>All recordings for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/recordings` <br>A call recording that becomes available in a meeting organized by a specific user: `users/{userId}/onlineMeetings/getAllRecordings` <br>A call recording that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings` * | Yes |
| Teams [callTranscript](/graph/api/resources/calltranscript) | All transcripts in an organization: `communications/onlineMeetings/getAllTranscripts` <br> All transcripts for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br>A call transcript that becomes available in a meeting organized by a specific user: `users/{userId}/onlineMeetings/getAllTranscripts` <br> A call transcript that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTrancripts` * | Yes |
| Teams [channel](/graph/api/resources/channel) | Changes to channels in all teams:<br>`/teams/getAllChannels` <br>Changes to channel in a specific team:<br>`/teams/{id}/channels` | Yes |
| Teams [chat](/graph/api/resources/chat) | Changes to any chat in the tenant:<br>`/chats` <br>Changes to a specific chat:<br>`/chats/{id}`<br/>Changes to any chat in the tenant where a particular Teams app is installed:<br/>`/appCatalogs/teamsApps/{id}/installedToChats` | Yes |
| Teams [chatMessage](/graph/api/resources/chatMessage) | Changes to chat messages in all channels in all teams:<br>`/teams/getAllMessages` <br>Changes to chat messages in a specific channel:<br>`/teams/{id}/channels/{id}/messages`<br>Changes to chat messages in all chats:<br>`/chats/getAllMessages` <br>Changes to chat messages in a specific chat:<br>`/chats/{id}/messages`<br>Changes to chat messages in all chats a particular user is part of:<br>`/users/{id}/chats/getAllMessages`<br>Changes to chat messages in all the chats in the tenant where a particular Teams app is installed:<br>`/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` | Yes |
| Teams [conversationMember](/graph/api/resources/conversationMember) | Changes to membership in a specific team:<br>`/teams/{id}/members` <br> Changes to membership in a specific chat:<br>`/chats/{id}/members` <br> Changes to membership in all chats:<br>`/chats/getAllMembers` <br> Changes to membership in all channels under a specific team:<br>`teams/{id}/channels/getAllMembers`<br/>Changes to membership in all the chats in the tenant where a particular Teams app is installed:<br/>`/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` <br> Changes to membership in all channels across the tenant:<br> `teams/getAllChannels/getAllMembers` | Yes |
| Teams [team](/graph/api/resources/team) | Changes to any team in the tenant:<br>`/teams` <br>Changes to a specific team:<br>`/teams/{id}` | Yes |
| Teams [teamsAppInstallation](/graph/api/resources/teamsappinstallation) | Changes when a particular Teams app is installed, upgraded, or deleted:<br>`/appCatalogs/teamsApps/{teams-app-id}/installations` | Yes |

## Notification payloads

You can get the notification with or without resource data, depending on your subscription. Subscribing with resource data lets you get the message payload and the notification, removing the need to call back and get the content.

### Notifications with resource data

For notifications with resource data, the payload looks like the following.  This payload is for a notification corresponding to the chat message resource. The actual notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification.

```json
{
    "value": [{
        "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "chats('19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces')/messages('1612289765949')",
        "resourceData": {
            "id": "1612289765949",
            "@odata.type": "#Microsoft.Graph.chatMessage",
            "@odata.id": "chats('19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces')/messages('1612289765949')"
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

For details about validating tokens and decrypting the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The decrypted payload for the previous example conforms to the [chatMessage](/graph/api/resources/chatMessage) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "1612289992105",
  "replyToId": null,
  "etag": "1612289992105",
  "messageType": "message",
  "createdDateTime": "2021-02-02T18:19:52Z",
  "lastModifiedDateTime": "2021-02-02T18:19:52.105Z",
  "lastEditedDateTime": null,
  "deletedDateTime": null,
  "subject": null,
  "summary": null,
  "chatId": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces",
  "importance": "normal",
  "locale": "en-us",
  "webUrl": null,
  "from": {
    "application": null,
    "device": null,
    "user": {
      "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
      "displayName": "Ramjot Singh",
      "userIdentityType": "aadUser"
    },
    "conversation": null
  },
  "body": {
    "contentType": "text",
    "content": "test"
  },
  "channelIdentity": null,
  "attachments": [],
  "mentions": [],
  "policyViolation": null,
  "reactions": [],
  "replies": [],
  "hostedContents": []
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the resource. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data isn't sent over).

The payload looks like the following. This payload is for a message sent in a channel.

```json
{
  "subscriptionId": "9f9d1ed0-c9cc-42e7-8d80-a7fc4b0cda3c",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",  
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2021-02-02T11:26:41.0537895-08:00",
  "resource": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2')/messages('1612293113399')",
  "resourceData": {
    "id": "1612293113399",
    "@odata.type": "#Microsoft.Graph.chatMessage",
    "@odata.id": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2')/messages('1612293113399')"
  }
}
```

The previous example shows a notification corresponding to a chat message resource. The actual notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification. The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload of the resource.

> [!NOTE]
> GET calls always return the current state of the resource. If the resource is changed between when the notification is sent and when the resource is retrieved, the operation returns the updated resource.

## Related content

* [Microsoft Graph change notifications](change-notifications-overview.md)
* [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
* [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
* [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
* [Get change notifications for chats using Microsoft Graph](teams-changenotifications-chat.md)
* [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
* [Microsoft Teams API overview](teams-concept-overview.md)
* [Get change notification for meeting transcripts and recordings using Microsoft Graph](teams-changenotifications-callrecording-and-calltranscript.md)
