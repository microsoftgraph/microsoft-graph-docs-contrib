---
title: "Get change notifications for presence updates in Microsoft Teams"
description: "Use change notifications in Microsoft Graph to subscribe to presence changes for Microsoft Teams users."
author: "awang119"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: "scenarios:getting-started"
---

# Get change notifications for presence updates in Microsoft Teams

Change notifications in Microsoft Graph let you subscribe to user changes in [Presence for Microsoft Teams](https://learn.microsoft.com/en-us/microsoftteams/presence-admins). Change notifications provide an alternative to polling for presence by using the [GET presence](/graph/api/presence-get) and [POST getPresencesByUserId](/graph/api/cloudcommunications-getpresencesbyuserid).

Use webhooks to subscribe to user's presence and receive notifications when changes occur. For general information on webhooks, see [Microsoft Graph API change notifications](/graph/api/resources/webhooks).

## Permissions

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Presence.Read.All.                                       | V1, Beta.          |
| Delegated (personal Microsoft account)| Not supported.                                           | Not supported.     |
| Application                           | Not supported.                                           | Not supported.     |

## Subscribeable resource types for presence

All subscriptions outlined have a maximum expiration time of an hour. A subscription can be renewed using the [Update subscription API](/graph/api/subscription-update) before it expires, or a new subscription can be created for the same resource after expiration. Presence subscriptions support notifications with resource data, allowing more detailed information to be delivered along with change notifications. For more information, see [Set up change notifications with resource data](webhooks-with-resource-data.md).

The following resource strings support subscriptions. For more information, see [Create subscription](/graph/api/subscription-post-subscriptions).

| Presence subscription type                    | Resource URL                                                   | Supported change types |
|:--------------------------------------------- |:-------------------------------------------------------------- |:---------------------- |
| Single user presence changes                  | `communications/presences/{id}`                                | updated                |
| Bulk user presence changes (Max 650 user IDs) | `communications/presences?$filter=id in ('{id}', '{id}', ...)` | updated                |

### Subscribe to a single user’s presence 

To subscribe to a single user's presence, you can set the resource in the subscription payload to `communications/presences/{id}` where the {id} field must be replaced with the user ID GUID of the user's presence. This subscription delivers change notifications when the user presence changes.

### Example: Single user presence subscription payloads

```json
{
    "changeType": "updated",
    "notificationUrl": "https://webhook.contoso.com/api",
    "lifecycleNotificationUrl": "https://webhook.contoso.com/api",
    "resource": "communications/presences/{id}",
    "expirationDateTime": "2023-09-14T10:00:00.0000000Z",
    "includeResourceData": true,
    "encryptionCertificate": "{encryption certificate}",
    "encryptionCertificateId": "{certificate id}",
    "clientState": "{secret client state}"
}
```

### Subscribe to multiple users' presence
Bulk subscriptions for user presence can be created by setting the subscription resource value to `/communications/presences?$filter=id in ('{id}', '{id}',...)` where the {id} represents a user IDs GUID of users. A maximum of 650 users can be subscribed in a single subscription. Presence changes for user IDs generate a notification. 

### Example: Multiple user presence subscription payloads

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

Change notifications for presence events are expected when a subscribed user presence experiences a change in a user's availability and activity.

### Example: Basic presence notifications
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

### Example: Presence notifications with resource data 

Presence notifications with resource data have the following additional properties encrypted in the payload:
- Availability or base presence information (available, away, busy)
- Activity or information that’s supplemental to the availability (in a meeting, in call)

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

### Example: Decrypted notifications with resource data
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
