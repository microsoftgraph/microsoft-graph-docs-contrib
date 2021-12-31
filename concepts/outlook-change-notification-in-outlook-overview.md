---
title: "Change notifications for Outlook resources using Microsoft Graph"
description: "Learn how to get notifications for changes (create, update, and delete) for resources in Outlook using Microsoft Graph APIs"
author: "abheek-das"
ms.localizationpriority: high
ms.prod: "outlook"
ms.custom: scenarios:getting-started
---

# Change notifications for Outlook resources using Microsoft Graph

Change notifications enable you to subscribe to changes (create, update, and delete) to a resource. Change notifications provide a low latency model by allowing 
you to maintain a [subscription](/graph/api/resources/webhooks?preserve-view=true). You can also get the resource data in the notifications and therefore avoid 
calling the API to get the payload.

> **Note:** The maximum time a subscription can last is 60 minutes; however, subscriptions can be renewed until the caller has permissions to access to resource.

## Change notification types
Outlook supports two types of change notifications:
- **Change notification to track all changes related to a resource across the tenant** - for example, you can subscribe to changes in messages in any channel across the tenant and get notified whenever a message is created, updated, or deleted in any channel in the tenant. These notifications may have [licensing and payment requirements](/graph/teams-licenses), such as change notifications for [messages](teams-changenotifications-chatmessage.md) and [membership](teams-changenotifications-chatMembership.md).
- **Change notification to track all changes for a specific resource** - for example, you can subscribe to changes in messages in a particular channel and get notified whenever a message is created, updated, or deleted in that channel.

For details about which resources support which types of change notifications, see [Microsoft Graph change notifications](webhooks.md).
 

## Notification payloads

Depending on your subscription, you can either get the notification with resource data, or without resource data. Subscribing with resource data allows you to get the 
resource payload along with the notification, which removes the need to call back and get the content.

### Notifications with resource data

For notifications with resource data, the payload looks like the following.  This payload is for a notification corresponding to the chat message resource. The actual 
notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification.

```json
{
    value: [
      {
        "subscriptionId": "dfd11b2f-8222-4189-9545-4205c95d6235",
        "subscriptionExpirationDateTime": "2021-12-31T16:16:44.9907405+05:30",
        "changeType": "created",
        "resource": "Users('722effaf-0433-4272-9ac4-d5ec11c3cd77')/messages('AAMkAGUwNjQ4ZjIxLTQ3Y2Y8AAA=')",
        "clientState": "<<--SpecifiedClientState-->>",
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
        "encryptedContent": {
          "data": "<<--EncryptedContent-->>",
          "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",        
          "dataSignature": "Qw/9ubWeUYJPWWXvNiGgct2FkNG2MXTRm/BLUpJM66k=",
          "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
          "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
        },
        "resourceData": {
          "@odata.type": "#microsoft.graph.message",
          "@odata.id": "Users('722effaf-0433-4272-9ac4-d5ec11c3cd77')/messages('AAMkAGUwNjQ4ZjIxLTQ3Y2Y8AAA=')",
          "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAGDUR8n\"",
          "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQBGAAAAAADbrwBIJbBSTKolRbhHUzSHBwCQ2fKdhq8oSKEDSVrdi3lRAAAAAAEMAACQ2fKdhq8oSKEDSVrdi3lRAAGDx268AAA="
        }
      }
    ]
    validationTokens: ["<<--ValidationTokens-->>"]
}
```

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).

The decrypted notification payload looks like the following. The decrypted payload for the previous example conforms to the [chatMessage](/graph/api/resources/chatMessage?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
    "receivedDateTime@odata.type":"#DateTimeOffset",
    "receivedDateTime":"2021-12-30T10:53:35Z",
    "subject":"TEST MESSAGE FOR RICH NOTIFICATIONS",
    "bodyPreview":"Hello,\r\n\r\nWhat\u2019s up?\r\n\r\nThanks\r\nMegan",
    "importance@odata.type":"#microsoft.graph.importance",
    "importance":"normal",
    "from": {
        "@odata.type":"#microsoft.graph.recipient",
        "emailAddress": {
            "@odata.type":"#microsoft.graph.emailAddress",
            "name":"Megan Brown",
            "address":"Megan.Brown@microsoft.com"
        }
    }
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the resource. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data is not sent over).

The payload looks like the following. This payload is for a message sent in a channel.

```json
value: [{
    "subscriptionId": "c6126aa3-0ed8-412f-a988-71e6cee627c4",
    "subscriptionExpirationDateTime": "2022-01-02T03:12:18.2257768+05:30",
    "changeType": "created",    
    "resource": "Users/622eaaff-0683-4862-9de4-f2ec83c2bd98/Messages/AAMkAGUwNjQ4ZjIxAAA=",
    "resourceData": {      
      "@odata.type": "#Microsoft.Graph.Message",
      "@odata.id": "Users/622eaaff-0683-4862-9de4-f2ec83c2bd98/Messages/AAMkAGUwNjQ4ZjIAAA=",
      "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAGDUUXn\"",
      "id": "AAMkAGUwNjQ4ZjIxAAA="
    },
    "clientState": "<<--SpecifiedClientState-->>",
    "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
}]
```
Previous example above shows a notification that corresponds to a outlook message resource. The actual notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification. The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload of the resource.

> **Note** GET calls will always return the current state of the resource. If the resource is changed between when the notification is sent and when the resource is retrieved, the operation will return the updated resource.

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Outlook mail API overview](outlook-mail-concept-overview.md)
