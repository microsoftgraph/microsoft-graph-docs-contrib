---
title: "Get change notifications for membership changes in teams and channels using Microsoft Graph"
description: "Learn how to get change notifications for any changes (create, update, and delete) in teams and channels membership using Microsoft Graph."
author: "anandab"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Get change notifications for membership changes in teams and channels using Microsoft Graph

Change notifications enable you to subscribe to membership changes (create, update, and delete) in a [team](/graph/api/resources/team) or private [channel](/graph/api/resources/channel). You can get notified whenever a member is added, removed, or updated in a team or in a private channel. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

Continue with this article about scenarios for the [conversationMember](/graph/api/resources/conversationmember) resource in the **team** or **channel** context. Or, find out about [change notifications for other Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise your subscription request will fail with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to changes in membership of a particular team

To get change notifications for membership changes in a particular team, subscribe to `/teams/{team-id}/members`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamMember.Read.All, TeamMember.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamMember.Read.Group*, TeamMember.Read.All, TeamMember.ReadWrite.All   |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/members",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to membership changes in all teams across the tenant

To get change notifications for membership changes in all teams across the tenant, subscribe to `/teams/getAllMembers`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamMember.Read.All, TeamMember.ReadWrite.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/getAllMembers",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2022-08-10T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for adding a member in a team.

```json
{
    "value": [{
        "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "teams('ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062')/members('ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=')",
        "resourceData": {
            "id": "ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=",
            "@odata.type": "#Microsoft.Graph.aadUserConversationMember",
            "@odata.id": "teams('ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062')/members('ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=')"
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

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [aaduserconversationmember](/graph/api/resources/aaduserconversationmember?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "/ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=",
  "roles": [
    "owner"
  ],
  "displayName": "John Doe",
  "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "email": null,
  "tenantId": "10eda0c8-cb50-4390-8751-488c29218b02"
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the membership content. Subscriptions for notifications without resource data don't require an encryption certificate (because Microsoft Graph doesn't send the actual resource data).

For notifications without resource data, the payload looks like the following. This payload is for a membership change in a team.

```json
{
  "subscriptionId": "9f9d1ed0-c9cc-42e7-8d80-a7fc4b0cda3c",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2021-02-02T11:26:41.0537895-08:00",
  "resource": "teams('ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062')/members('ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=')",
  "resourceData": {
    "id": "ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk",
    "@odata.type": "#Microsoft.Graph.aadUserConversationMember",
    "@odata.id": "teams('ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062')/members('ZWUwZjVhZTItOGJjNi00YWU1LTg0NjYtN2RhZWViYmZhMDYyIyM3Mzc2MWYwNi0yYWM5LTQ2OWMtOWYxMC0yNzlhOGNjMjY3Zjk=')"
  }
}
```
The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the team member. 

## Subscribe to membership changes in all channels across the tenant (preview)

To get change notifications for membership changes in all channels across the tenant, subscribe to `/teams/getAllChannels/getAllMembers`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. Currently, only private channels are supported. This subscription is only available in the beta endpoint.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMember.Read.All, ChannelMember.ReadWrite.All   |

### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/getAllChannels/getAllMembers",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2022-08-10T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to membership changes in all private and shared channels of a particular team

To get change notifications for membership changes in all the private and shared channels in a particular team, subscribe to `/teams/{team-id}/channels/getAllMembers`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

[!INCLUDE [teams-model-A-and-B-disclaimer](../includes/teams-model-A-and-B-disclaimer.md)]

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelMember.Read.All, ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMember.Read.All, ChannelMember.ReadWrite.All   |


### Example 1: Subscribe to changes to receive direct membership notification for private and shared channel.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/getAllMembers",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Notifications with resource data

This is a payload where member is added to a shared or private channel. 

```json
{
    "value": [{
        "subscriptionId": "755a93bc-85bb-4da4-ade4-7d325bc8eecb",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/members('MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==')",
        "resourceData": {
            "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==",
            "@odata.type": "#Microsoft.Graph.aadUserConversationMember",
            "@odata.id": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/members('MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==')"
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

The payload for channel membership events in which the **resource** property refers to a channel member.

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [aaduserconversationmember](/graph/api/resources/aaduserconversationmember?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==",
  "roles": [
    "owner"
  ],
  "displayName": "Test user",
  "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "email": null,
  "tenantId": "10eda0c8-cb50-4390-8751-488c29218b02"
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the membership content. Subscriptions for notifications without resource data don't require an encryption certificate (because Microsoft Graph doesn't send the actual resource data).

For notifications without resource data, the payload looks like the following. This payload is for a membership change in a private or shared channel.

```json
{
  "subscriptionId": "9f9d1ed0-c9cc-42e7-8d80-a7fc4b0cda3c",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2021-02-02T11:26:41.0537895-08:00",
  "resource": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/members('MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==')",
  "resourceData": {
    "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==",
    "@odata.type": "#Microsoft.Graph.aadUserConversationMember",
    "@odata.id": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/members('MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==')"
  }
}
```
The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the channel member. 

### Example 2: Subscribe to changes to receive indirect membership notification for shared channel using query parameters (Preview).
Subscribing with these query parameters enables notifications for both direct and indirect membership updates.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/getAllMembers?notifyOnIndirectMembershipUpdate=true&suppressNotificationWhenSharedUnsharedWithTeam=true",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Notifications with resource data

This is a payload where member is added to a team where channel is shared with. 

```json
{
    "value": [{
        "subscriptionId": "755a93bc-85bb-4da4-ade4-7d325bc8eecb",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2025-07-16T10:30:34.9097561-08:00",
        "resource": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/allMembers('MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxYjAzMWEwNy1mM2FkLTQ3YmYtYTYyOS04MWM5NmViYWFkNmZfMTk6bFJaSEw1Vnd2WnMwWE4yb3JUbjdEbGluSkRFVGtnU1ZUSFhiRExVRUtmMDFAdGhyZWFkLnRhY3YyIyMxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWI=')",
        "resourceData": {
            "id": "MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxYjAzMWEwNy1mM2FkLTQ3YmYtYTYyOS04MWM5NmViYWFkNmZfMTk6bFJaSEw1Vnd2WnMwWE4yb3JUbjdEbGluSkRFVGtnU1ZUSFhiRExVRUtmMDFAdGhyZWFkLnRhY3YyIyMxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWI=",
            "@odata.type": "#Microsoft.Graph.aadUserConversationMember",
            "@odata.id": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/allMembers('MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxYjAzMWEwNy1mM2FkLTQ3YmYtYTYyOS04MWM5NmViYWFkNmZfMTk6bFJaSEw1Vnd2WnMwWE4yb3JUbjdEbGluSkRFVGtnU1ZUSFhiRExVRUtmMDFAdGhyZWFkLnRhY3YyIyMxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWI=')"
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

The payload for the channel indirect membership that the **resource** property points to a channel allMembers instead members api.

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [aaduserconversationmember](/graph/api/resources/aaduserconversationmember?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
   "@microsoft.graph.originalSourceMembershipUrl": "tenants/('10eda0c8-cb50-4390-8751-488c29218b02')teams('1b031a07-f3ad-47bf-a629-81c96ebaad6f')/members/('MCMjMSMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxYjAzMWEwNy1mM2FkLTQ3YmYtYTYyOS04MWM5NmViYWFkNmYjIzEyNzNhMDE2LTIwMWQtNGY5NS04MDgzLTFiN2Y5OWIzZWRlYg==')",
  "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzU5YjViYzY5LWNhNzMtNGZmZC1hMmUwLTg4YTc5MTE1ZDEzYg==",
  "roles": [
    "owner"
  ],
  "displayName": "Test user",
  "userId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
  "email": null,
  "tenantId": "10eda0c8-cb50-4390-8751-488c29218b02"
}
```
**@microsoft.graph.originalSourceMembershipUrl** shows the the original source of this member that is been added and can be used to make calls to Microsoft Graph to get the payload of the member in a team. The property in the example shows that a member is added in a team where channel is shared. 

>**Note:** 
> 1. Indirect membership notifications are only available when subscribing to the owning team of the shared channel.
> 1. When subscribing to changes to receive both direct and indirect notifications for shared channel, please choose to receive notification with resource. Therefore, `@microsoft.graph.originalSourceMembershipUrl` can be used to identify direct or indirect membership changes clearly.
> 2. When as a subscriber, you receive a notification that a member has been removed, use the [channel: doesUserHaveAccess](../api-reference/v1.0/api/channel-doesuserhaveaccess.md) API to verify that the user's access has actually been revoked.

## Subscribe to changes when a specific channel is shared with or unshared from a team

Subscribers can receive change notifications when a specific channel is shared with or unshared from a team. 

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelMember.Read.All, ChannelMember.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMember.Read.All, ChannelMember.ReadWrite.All |

### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/{channel-id}/sharedWithTeams",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2025-07-14T22:33:21.5040567Z",
  "clientState": "{secretClientState}"
}
```
### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for shared a channel with team.

```json
{
    "value": [{
        "subscriptionId": "7e11c492-bae9-4fa5-a7b5-71844cf8ac47",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2025-07-14T22:33:21.5040567+00:00",
        "resource": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/sharedWithTeams('04460120-3ca5-40cf-bc72-e890777256a3')",
        "resourceData": {
            "id": "04460120-3ca5-40cf-bc72-e890777256a3",
            "@odata.type": "#Microsoft.Graph.sharedWithChannelTeamInfo",
            "@odata.id": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/sharedWithTeams('04460120-3ca5-40cf-bc72-e890777256a3')"
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

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [aaduserconversationmember](/graph/api/resources/aaduserconversationmember?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
    "isHostTeam": false,
    "id": "04460120-3ca5-40cf-bc72-e890777256a3",
    "tenantId": "10eda0c8-cb50-4390-8751-488c29218b02",
    "displayName": "My Sample Team for first"
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the membership content. Subscriptions for notifications without resource data don't require an encryption certificate (because Microsoft Graph doesn't send the actual resource data).

For notifications without resource data, the payload looks like the following. This payload is for a membership change in a team.

```json
{
  "subscriptionId": "7e11c492-bae9-4fa5-a7b5-71844cf8ac47",
  "changeType": "created",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2025-07-14T22:33:21.5040567+00:00",
  "resource": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/sharedWithTeams('04460120-3ca5-40cf-bc72-e890777256a3')",
  "resourceData": {
      "id": "04460120-3ca5-40cf-bc72-e890777256a3",
      "@odata.type": "#Microsoft.Graph.sharedWithChannelTeamInfo",
      "@odata.id": "teams('cd28795b-988a-48ec-b652-781178957d8b')/channels('19:lRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01@thread.tacv2')/sharedWithTeams('04460120-3ca5-40cf-bc72-e890777256a3')"
  },
}
```
The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the shared and unshared with team info. 

After receiving a notification event indicating that a shared channel has been shared with or unshared from a team, call the [get all members](../api-reference/v1.0/api/channel-list-allmembers.md) API to refresh the shared channel membership.


## Related content
- [Microsoft Graph change notifications](change-notifications-overview.md)
- [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
- [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
- [Get change notifications for chats using Microsoft Graph](teams-changenotifications-chat.md)
- [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
