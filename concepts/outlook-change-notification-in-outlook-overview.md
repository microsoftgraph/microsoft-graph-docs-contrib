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

For notifications with resource data, the payload looks like the following.  In the example below, the payload is for a notification corresponding to the outlook message resource. The actual notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification.

```json
{
    "value": [
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
          "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2Y8AAA="
        }
      }
    ]
    "validationTokens": ["<<--ValidationTokens-->>"]
}
```

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).

The decrypted notification payload looks like the following. The decrypted payload for the previous example conforms to the outlook [message](/graph/api/resources/message?preserve-view=true) schema. The payload is similar to that returned by GET operations. Notification for other outlook entities like [contacts](/graph/api/resources/contact?preserve-view=true), [calendar](/graph/api/resources/calendar?preserve-view=true) follow their respective schemas. 

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
"value": [
 {
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
 }
]
```
Previous example above shows a notification that corresponds to a outlook message resource. The actual notification includes the **resource** and **resourceData** properties, which represent the resource that has triggered the notification. The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload of the resource.

> **Note** GET calls will always return the current state of the resource. If the resource is changed between when the notification is sent and when the resource is retrieved, the operation will return the updated resource.

## Subscribe to changes in mail, calendar or contacts

To get change notifications for all messages and replies across channels in a tenant, subscribe to /teams/getAllMessages. This resource supports including resource data in the notification.
Create one or more single-value extended properties in a new or existing instance of a resource.

The following user resources are supported:

- [contact](../resources/contact.md)
- [event](../resources/event.md)
- [message](../resources/message.md)

### Permissions

Outlook change notifications support delegated and application permission scopes.
- Delegated permission supports subscribing to items in folders in only the signed-in user's mailbox. For example, you cannot use the delegated permission 
  Calendars.Read to subscribe to events in another user’s mailbox.
- To subscribe to change notifications of Outlook contacts, events, or messages in _shared or delegated_ folders:
  - Use the corresponding application permission to subscribe to changes of items in a folder or mailbox of _any_ user in the tenant.
  - Do not use the Outlook sharing permissions (Contacts.Read.Shared, Calendars.Read.Shared, Mail.Read.Shared, and their read/write counterparts), as they 
    do **not** support subscribing to change notifications on items in shared or delegated folders.

| Supported resource                | Delegated (work or school account) | Delegated (personal Microsoft account) | Application               |
|:----------------------------------|:-----------------------------------|:---------------------------------------|:--------------------------|
|[contact](../resources/contact.md) | Contacts.Read                      | Contacts.Read                          | Contacts.Read             |
|[event](../resources/event.md)     | Calendars.Read                     | Calendars.Read                         | Calendars.Read            |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read          | Mail.ReadBasic, Mail.Read              | Mail.ReadBasic, Mail.Read |

### HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /subscriptions
```

### Request headers

| Name           | Type    | Description               |
|:---------------|:--------|:--------------------------|
| Authorization  | string  | Bearer {token}. Required. |

### Request body

In the request body, supply a JSON representation of [subscription](../resources/subscription.md) object.

### Response

If successful, this method returns `201 Created` response code and a [subscription](../resources/subscription.md) object in the response body.
For details about how errors are returned, see [Error responses][error-response].

### Examples

#### Example 1: Create subscription to send a change notification without resource data when the user receives a new message
#### Example 2: Create subscription to send a change notification with resource data when the user receives a new message

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Outlook mail API overview](outlook-mail-concept-overview.md)
- [Outlook contacts API overview](outlook-contacts-concept-overview.md)
- [Outlook calendar API overview](outlook-calendar-concept-overview.md)
