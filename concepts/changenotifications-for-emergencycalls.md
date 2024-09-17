---
title: "Get change notifications for Microsoft Teams emergency call event updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to various events for Microsoft Teams emergency calls."
author: "awang119"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
ms.custom: "scenarios:getting-started"
---
# Get change notifications for Microsoft Teams emergency call event updates

[high level diagram of how notification works] 


## Permissions 

| Permission type                       | Permissions (from least to most privileged)              | Supported versions |
|:--------------------------------------|:---------------------------------------------------------|:-------------------|
| Delegated (work or school account)    | Not supported.                                       | Not supported.          |
| Delegated (personal Microsoft account) | Not supported.                                           | Not supported.     |
| Application                           | CallEvents-Emergency.Read.All                                         | beta.     |

## Subscribe to emergency call started events

To subscribe to when an applicable emergency call policy number is dialed, set the `resource` property in the subscription payload to `communications/calls/getEmergencyEventsByPolicy(policyName='{policyName}')` where the {policyName} field must be replaced with the policy name configured for your organization.

Subscriptions for emergency call events only support rich notifications. Please set `includeResourceData` to `true` and provide appropriate values for `encryptionCertificate` and `encryptionCertificateId`. For more information on creating subscriptions with rich notifications, see [Set up change notifications that include resource data](/graph/webhooks-with-resource-data).

Subscriptions for emergency call events have a max expiration period of 1 day. To keep subscriptions for longer durations, a subscription patch must be made to update the `expirationDateTime` property. See [Update subscription API](/graph/api/subscription-update) for more details.

Subscriptions are limited one subscriptions per application, per tenant, and per unique policy name. A duplicated subscription using the same application, tenant, and to the same emergency policy will return conflict.

### Subscription payload example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://contonso.com/notificationUrl",
  "resource": "communications/calls/getEmergencyEventsByPolicy(policyName='EmergencyPolicy')",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to emergency call started 
[Ben TODO - include description] 
[Ben TODO - include subscriptoion request & response]
[Ben TODO - include notification request & response]