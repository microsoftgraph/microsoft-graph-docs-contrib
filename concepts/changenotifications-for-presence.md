---
title: "Get change notifications for Microsoft Teams presence updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to presence changes for Microsoft Teams users."
author: "awang119"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: "scenarios:getting-started"
---

# Get change notifications for Microsoft Teams user presence changes

Change notifications in Microsoft Graph enable you to subscribe to user changes in [Presence for Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/presence-admins). Change notifications provide an alternative to polling for presence by using the [GET presence](/graph/api/presence-get) and [POST getPresencesByUserId](/graph/api/cloudcommunications-getpresencesbyuserid).

Use webhooks to subscribe to user's presence and receive notifications when changes occur. For general information on webhooks, see [Microsoft Graph API change notifications](/graph/api/resources/webhooks).

## Permissions

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Presence.Read.All.                                       | V1, Beta.          |
| Delegated (personal Microsoft account)| Not supported.                                           | Not supported.     |
| Application                           | Not supported.                                           | Not supported.     |

## Subscribeable resource types for presence

All subscriptions outlined have a max expiration time of an hour. A subscription can be renewed using the [Update subscription API](/graph/api/subscription-update) before expiry or alternatively a new subscription can be created for the same resource after expiration. Presence subscriptions do support notifications with resource data which allows more detailed information to be delievered along with change notifications. For more information about [Set up change notifications with resource data](webhooks-with-resource-data.md).

The following resource strings are supported to subscription. For more details on creating a subscription see [Create subscription](/graph/api/subscription-post-subscriptions).

| Presence subscription type                    | Resource URL                                                   | Supported change types |
|:--------------------------------------------- |:-------------------------------------------------------------- |:---------------------- |
| Single user presence changes                  | `communications/presences/{id}`                                | updated                |
| Bulk user presence changes (Max 650 user ids) | `communications/presences?$filter=id in ('{id}', '{id}', ...)` | updated                |

### Subscribe to a single user’s presence 

To subscribe to a single user's presence, you can set the resource in the subscription payload to `communications/presences/{id}`. Where the {id} field must be replaced with the user ID GUID of user's presence. Making this subscription will allow change notifications to be delivered when the user presence changes.

### Payload example

```json
{
    "changeType": "updated",
    "notificationUrl": "https://webhook.contoso.com/api",
    "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
    "resource": "communications/presences/{id}}",
    "expirationDateTime": "2023-09-14T10:00:00.0000000Z",
    "includeResourceData": true,
    "encryptionCertificate": "{encryption certificate}",
    "encryptionCertificateId": "{certificate id}",
    "clientState": "{secret client state}"
}
```

### Subscribe to multiple users' presence
Bulk subscriptions for user presences can be achieved by setting the subscription resource value to `/communications/presences?$filter=id in ('{id}', '{id}',...)` where the {id} represents a user IDs GUID of users. A maximum of 650 users can be subscribed at once in a single subscription. Changes in presence for user ids will cause a notification to be sent.

### Payload example

```json
{
    "changeType": "updated",
    "notificationUrl": "https://webhook.contoso.com/api",
    "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
    "resource": "/communications/presences?$filter=id in ('{id}', '{id}',...)",
    "expirationDateTime": "2023-09-14T10:00:00.0000000Z",
    "includeResourceData": true,
    "encryptionCertificate": "{encryption certificate}",
    "encryptionCertificateId": "{certificate id}",
    "clientState": "{secret client state}"
}
```

## Receiving presence event notifications

Notifications for presence event changes are expected when a subscribed user presence experiences a change in a user's availability and activity.

### Basic presence notification example
```json
{
  "value": [{
    "subscriptionId": "{Subscription id}",
    "clientState": "{secret client state}",
    "changeType": "updated",
    "tenantId": "{Organization/Tenant id}",
    "resource": "communications/presences/{id}",
    "subscriptionExpirationDateTime": "2023-09-14T10:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "users/{User Id}/presence",
      "@odata.type": "#microsoft.graph.presence",
      "id": "{User Id}"
    },
    "organizationId": "{Organization/Tenant id}",
  }]
}
```

### Presence notification with resource data example

Presence notifications with resource data have the following additional properties encrypted in the payload:
- Availability or base presence information (available, away, busy)
- Activity or information that’s supplemental to the availability (in a meeting, incall)

**Note** The availability and activity can be the same value.

For more information about possible combinations of availability and activity, see [Presence properties](/graph/api/resources/presence).

```json
{
  "value": [{
    "subscriptionId": "{Subscription id}",
    "clientState": "{secret client state}",
    "changeType": "updated",
    "tenantId": "{Organization/Tenant id}",
    "resource": "communications/presences/{id}",
    "subscriptionExpirationDateTime": "2023-09-14T10:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "users/{User Id}/presence",
      "@odata.type": "#microsoft.graph.presence",
      "id": "{User Id}"
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

### Decrypted notification with resource data example
```json
{
    "@odata.id": "users/{User Id}/presence",
    "@odata.type": "#microsoft.graph.presence",
    "id": "{User Id}",
    "availability": "{Availability}",
    "activity": "{Activity}"
}
```

## See also
- [Learn about the presence resource type](/graph/api/resources/presence)
- [Learn about change notifications through webhooks](change-notifications-delivery-webhooks.md)
- [Learn about change notifications API in Microsoft Graph](/graph/api/resources/webhooks)
