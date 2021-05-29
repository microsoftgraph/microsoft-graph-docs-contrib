---
title: "Change notifications in Microsoft Teams"
description: "Get change notifications in Microsoft Teams using Microsoft Graph"
author: "anandab-msft"
localization_priority: Priority
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Change notifications for resources in Microsoft Teams using Microsoft Graph

Change notifications enable you to subscribe to changes (create, update, and delete) to a resource, it provides a low latency model by allowing you to maintain a [subscription](/graph/api/resources/webhooks?preserve-view=true). One can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

> **Note:** The maximum time a subscription can last is 60 minutes; however, subscriptions can be renewed until the caller has permissions to access to resource.

## Change notification types
Teams' resource supports two types of change notification
- **Change notification to track all changes related to a resource across tenant**, for example one can subscribe to change in messages in any channel across tenant and get notified whenever a message is created in any channel in tenant.
- **Change notification to track all changes for a specific resource**,  for example one can subscribe to change in messages in a particular channel and get notified when ever a message is created in that channel.

Check [Microsoft Graph change notifications](webhooks.md) to see what resources support what type of change notification.
 

## Notification payloads

Depending on your subscription, you can either get the notification with resource data, or without resource data. Subscribing with resource data allows you to get the message payload along with the notification removing the need to call back and get the content.

### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for notification corresponding to chat message resource, in actual notification **resource** and **resourceData** filed will represent the resource which has trigerred the notification.

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

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).

The decrypted notification payload looks like the following. For above example decrypted payload conforms to the [chatMessage](/graph/api/resources/chatMessage?preserve-view=true) schema. The payload is similar to that returned by GET operations.

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

Notifications without resource data gives you enough information to make GET calls to get the resource. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data is not sent over).

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
Above example shows notification corresponding to chat message resource, in actual notification resource and resourceData filed will represent the resource which has trigerred the notification. The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload of the resource. 

> **Note** GET calls will always return the current state of the resource. If the resource is changed between when the notification is sent and when the resource is retrieved, the operation will return the updated resource.

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
