---
title: "Change notifications for Outlook resources in Microsoft Graph"
description: "Learn how to get notifications for changes (create, update, and delete) for resources in Outlook using Microsoft Graph APIs"
author: "abheek-das"
ms.localizationpriority: high
ms.prod: "outlook"
ms.custom: scenarios:getting-started
---

# Change notifications for Outlook resources in Microsoft Graph

Change notifications enable you to subscribe to changes (create, update, and delete) to a resource. The [subscription](/graph/api/resources/webhooks?preserve-view=true) approach reduces the delay between the time of a change and receiving its notification. In addition, when setting up a subscription, you can specify notifications to include resource data, thereby avoiding a separate subsequent API call to get the resource payload.

A maximum of 1000 active subscriptions per mailbox for all applications is allowed for Outlook resources.

## Subscribe to changes in mail, calendar or contacts

To subscribe to change notifications of Outlook resources, first create a [subscription](/graph/api/subscription-post-subscriptions?preserve-view=true).

The following user resources are supported:

- [contact](/graph/api/resources/contact)
- [event](/graph/api/resources/event)
- [message](/graph/api/resources/message)

The above resources support creation of subscriptions with and without resource data in the notification payload.

## Creating a subscription

To [create a subscription](webhooks.md#creating-a-subscription), you need to specify the Outlook resource for which you want to receive notifications when the requested type of changes (created, updates or deleted) occur. See an [example](#example-1-create-a-subscription-to-get-change-notifications-without-resource-data-when-the-user-receives-a-new-message).

### Permissions

Creating a subscription requires read scope to the resource. For example, to get change notifications on messages, your app needs the Mail.Read permission. Outlook change notifications support delegated and application permission scopes. Depending on the resource the permission specified in the following table is the least privileged required to call this API.
- Delegated permission supports subscribing to items in folders in only the signed-in user's mailbox. For example, you cannot use the delegated permission 
  Calendars.Read to subscribe to events in another user’s mailbox.
- To subscribe to change notifications of Outlook contacts, events, or messages in _shared or delegated_ folders:
  - Use the corresponding application permission to subscribe to changes of items in a folder or mailbox of _any_ user in the tenant.
  - Do not use the Outlook sharing permissions (Contacts.Read.Shared, Calendars.Read.Shared, Mail.Read.Shared, and their read/write counterparts), as they 
    do **not** support subscribing to change notifications on items in shared or delegated folders.

| Resource| Supported Resource Paths| Delegated (work or school account)| Delegated (personal Microsoft account)| Application|
|:--------|:------------------------|:----------------------------------|:--------------------------------------|:-----------|
|[contact](/graph/api/resources/contact) | Changes to all personal contacts in a user's mailbox: <br>`/me/contacts`<br>`/users/{id}/contacts`<br>Changes to contacts in a user's contactFolder:<br>`users/{id}/contactFolders/{id}/contacts` | Contacts.Read | Contacts.Read | Contacts.Read |
|[event](/graph/api/resources/event)     | Changes to all events in a user's mailbox: <br>`/me/events`<br>`/users/{id}/events` | Calendars.Read | Calendars.Read | Calendars.Read |
|[message](/graph/api/resources/message) | Changes to all messages in a user's mailbox: <br>`/me/messages`<br>`/users/{id}/messages`<br>Changes to messages in a user's mailFolder:<br>`/users/{id}/mailFolders/{id}/messages` | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read |

### Including resource data in notification payload (preview)

Notifications with resource data for Outlook resources is currently available only in Microsoft Graph Beta endpoint. To have resource data included in the change notification, the following properties **must** be specified in addition to those usually specified when [creating a subscription](webhooks.md#creating-a-subscription):

- **includeResourceData** which should be set to `true` to explicitly request resource data.
- **resource** which specifies the subscription resource url **must** use the `$select` query parameter to explicitly specify the resource properties to be included in the notification payload.
> **Note:** $top, $skip, $orderby, $select=Body,UniqueBody and $expand other than SingleValueExtendedProperties,MultiValueExtendedProperties are not supported in subscription resource Url.
- **encryptionCertificate** which contains only the public key that Microsoft Graph uses to encrypt resource data. Keep the corresponding private key to [decrypt the content](webhooks-with-resource-data.md#decrypting-resource-data-from-change-notifications).
- **encryptionCertificateId** which is your own identifier for the certificate. Use this ID to match in each change notification, which certificate to use for decryption.

See an [example](#example-2-create-a-subscription-to-get-change-notifications-with-resource-data-when-the-user-receives-a-new-message).

### Refine the conditions for a notification
You can further refine the conditions for a notification by using the `$filter` query parameter. See an [example](#example-3-create-a-subscription-to-get-change-notifications-with-resource-data-for-a-message-based-on-a-condition).

One common application of $filter is to get notification on a change in a specific property of the specified resource. For example, you can use $filter to subscribe to unread messages in a folder (the _isRead_ property is false), and include all the change types:
- A message added to or marked unread in the folder would trigger a `Created` notification.
- Reading a message or marking it as read in the folder would trigger a `Deleted` notification.
- A change to any property, other than _isRead_, of a message in the folder would trigger an `Updated` notification.

If you don’t use a $filter when creating the subscription:
- Adding a message to the folder would result in a `Created` notification.
- Reading a message in the folder, marking the message as read, or changing any other property of a message in that folder would result in an `Updated` notification.
- Deleting the message would result in a `Delete` notification.

### Subscribing to subscription lifecycle notifications
The above Outlook resources also support subscribing to lifecycle notifications. Lifecycle notifications are needed in case your app gets their subscriptions removed or misses some change notifications. Apps should implement logic to detect and recover from the loss, and resume a continuous change notification flow. To learn more, see [subscribing to lifecycle notifications](webhooks-lifecycle.md).

### Subscription Lifetime
The maximum time a subscription can last for an Outlook resource is 4320 minutes for notification without resource data and 1 day for notification with resource data; however, [subscriptions can be renewed](/graph/api/subscription-update) until the caller has permissions to access to resource.

## Notification payloads

Depending on your subscription, you can either get the notification with resource data, or without resource data. Subscribing with resource data allows you to get the 
resource payload along with the notification, which removes the need to call back and get the content.

### Notifications with resource data (preview)

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

The decrypted notification payload looks like the following. The decrypted payload for the previous example conforms to the outlook [message](/graph/api/resources/message?preserve-view=true) schema. The payload is similar to that returned by GET operations. However, only those properties are returned in the notification payload that are specified using `$select` while specifying the _resource_ during subscription creation. Notification for other outlook entities like [contacts](/graph/api/resources/contact?preserve-view=true), [calendar](/graph/api/resources/calendar?preserve-view=true) follow their respective schemas. 

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

## Examples

### Example 1: Create a subscription to get change notifications without resource data when the user receives a new message
The following example requests a notification for a message being created in the user's mailbox.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_subscription_withoutresourcedata_for_message_resource"
}-->

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-type: application/json

{
    "changeType": "created",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "resource": "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages",
    "expirationDateTime": "2021-07-07T21:42:18.2257768+00:00",
    "clientState": "secretClientState"
}
```

#### Response
The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",
    "id": "5522bd62-7c96-4530-85b0-00b916f6151a",
    "resource": "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages",
    "applicationId": "507c3b9a-67b8-463d-88a2-15a8cefb2111",
    "changeType": "created",
    "clientState": "secretClientState",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "notificationQueryOptions": null,
    "notificationContentType": null,
    "lifecycleNotificationUrl": null,
    "expirationDateTime": "2022-01-01T21:42:18.2257768Z",
    "creatorId": "a4c7bd34-4f3b-46b7-a25d-b63c1e2a2842",
    "includeResourceData": null,
    "latestSupportedTlsVersion": "v1_2",
    "encryptionCertificate": null,
    "encryptionCertificateId": null,
    "notificationUrlAppId": null
}
```

### Example 2: Create a subscription to get change notifications with resource data when the user receives a new message
The following example requests a notification with resource data for a message being created in the user's mailbox. The properties of the message resource to be included in the notification payload are specified using `$select` query parameter.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_subscription_withresourcedata_for_message_resource"
}-->

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-type: application/json

{ 
    "changeType": "created",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "resource": "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages?$select=Subject,bodyPreview,importance,receivedDateTime,from",
    "expirationDateTime": "2022-01-01T21:42:18.2257768+00:00",
    "clientState": "secretClientValue",
    "includeResourceData": true,
    "encryptionCertificate": "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
    "encryptionCertificateId": "testCertificateId"
}
```

#### Response
The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",
    "id": "178eec5f-cf3c-4e7e-8a9c-8640deb5b5c5",
    "resource": "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages?$select=Subject,bodyPreview,importance,receivedDateTime,from",
    "applicationId": "507c3b9a-67b8-463d-88a2-15a8cefb2111",
    "changeType": "created",
    "clientState": "secretClientValue",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "notificationQueryOptions": null,
    "notificationContentType": null,
    "lifecycleNotificationUrl": null,
    "expirationDateTime": "2022-01-01T12:32:35.1582696Z",
    "creatorId": "a4c7bd34-4f3b-46b7-a25d-b63c1e2a2842",
    "includeResourceData": true,
    "latestSupportedTlsVersion": "v1_2",
    "encryptionCertificate": "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
    "encryptionCertificateId": "testCertificateId",
    "notificationUrlAppId": null
}
```

### Example 3: Create a subscription to get change notifications with resource data for a message based on a condition
The following example requests a notification with resource data for a message being created in the Drafts folder, containing one or more attachments, and importance being High.

#### Request
<!-- {
  "blockType": "request",
  "name": "create_subscription_withresourcedata_for_message_resource_basedonfilter"
}-->

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-type: application/json

{ 
    "changeType": "created",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "resource": "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'",
    "expirationDateTime": "2022-01-01T21:42:18.2257768+00:00",
    "clientState": "secretClientValue",
    "includeResourceData": true,
    "encryptionCertificate": "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
    "encryptionCertificateId": "testCertificateId"
}
```

#### Response
The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",
    "id": "239dbc5f-cf3c-4e7e-8c9c-3340abc5b5c5",
    "resource": "me/mailfolders('Drafts')/messages?$select=Subject,bodyPreview&$filter=hasAttachments eq true AND importance eq 'High'",
    "applicationId": "507c3b9a-67b8-463d-88a2-15a8cefb2111",
    "changeType": "created",
    "clientState": "secretClientValue",
    "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
    "notificationQueryOptions": null,
    "notificationContentType": null,
    "lifecycleNotificationUrl": null,
    "expirationDateTime": "2022-01-20T12:32:35.1582696Z",
    "creatorId": "a4c7bd34-4f3b-46b7-a25d-b63c1e2a2842",
    "includeResourceData": true,
    "latestSupportedTlsVersion": "v1_2",
    "encryptionCertificate": "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA==",
    "encryptionCertificateId": "testCertificateId",
    "notificationUrlAppId": null
}
```

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Outlook mail API overview](outlook-mail-concept-overview.md)
- [Outlook contacts API overview](outlook-contacts-concept-overview.md)
- [Outlook calendar API overview](outlook-calendar-concept-overview.md)
