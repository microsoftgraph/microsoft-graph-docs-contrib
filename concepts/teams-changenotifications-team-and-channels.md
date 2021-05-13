---
title: "Get change notifications for creation, updation or deletion of team and channels using Microsoft Graph"
description: "Get change notifications for change in creation, updation or deletion of team and channels using Microsoft Graph"
author: "anandab"
localization_priority: Priority
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for team and channel using Microsoft Graph

Change notifications enables you to subscribe to changes in a resource. For more details about creating and managing subscription see [Use the Microsoft Graph API to get change notifications](https://docs.microsoft.com/en-us/graph/api/resources/webhooks?view=preserve-view=true)

>**Note:** The maximum time a subscription can last is 60 minutes; however, subscriptions can be renewed until the caller has permissions to access to resource.

### Subscribe to changes in any team at tenant level

To get change notifications for any change in team's property across tenant, subscribe to `/teams`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | Team.ReadBasic.All,TeamSettings.Read.All   | beta|

#### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
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

### Subscribe to changes in a particular team


To get change notifications for any change in teams' property of a specific team, subscribe to `/teams/{id}`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | Team.ReadBasic ,TeamSettings.Read    | beta |

#### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```


### Subscribe to changes in any channel at tenant level

To get change notifications for creation, updation or deletion of any channel across tenant, subscribe to `teams/getAllChannels`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

>**Note:** Private channel is not supported.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | Channel.ReadBasic.All ,ChannelSettings.Read.All | beta |

#### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "teams/getAllChannels",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Subscribe to changes in any channel of a particular team


To get change notifications for any change in channel's property across any channel in a team, subscribe to `teams/{id}/channels`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | Channel.ReadBasic  ,ChannelSettings.Read   | beta |

#### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels ",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Notification payloads

Depending on your subscription, you can either get the notification with resource data, or without it. Subscribing with resource data allows you to get the channel payload along with the notification, removing the need to call back and get the content.

### Notifications with resource data
Notifications with resource data are encrypted, for details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).
For notifications with resource data, the payload looks for any change in team's property looks like the following.

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



The decrypted notification payload looks like the following. The payload conforms to the [teams](/graph/api/resources/teams?preserve-view=true) schema. The payload is similar to that returned by GET operations.

>**Note:** [discoverySettings](https://docs.microsoft.com/en-us/graph/api/resources/teamdiscoverysettings?view=graph-rest-beta)  and [classSettings](https://docs.microsoft.com/en-us/graph/api/resources/teamclasssettings?view=graph-rest-beta) are not exposed in payload data.

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


For notifications with resource data, the payload looks for any change in channel's property looks like the following.

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

Notifications without resource data give you enough information to make GET calls to get the message content. Subscriptions for notifications without resource data do not require an encryption certificate (because actual resource data is not sent over).

For notifications with resource data, the payload  for any change in teams's property looks like the following.

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

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the message. GET calls will always return the current state of the message. If the message is changed between when the notification is sent and when the message is retrieved, the operation will return the updated message.


>**Note:** Channel email address is not returned in payload.

For notifications with resource data, the payload  for any change in teams's property looks like the following.

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


## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Microsoft Teams API overview](teams-concept-overview.md)