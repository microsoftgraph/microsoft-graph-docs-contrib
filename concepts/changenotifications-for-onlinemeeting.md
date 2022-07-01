---
title: "Get change notifications for meeting call updates in Microsoft Graph"
description: "Change notifications in Microsoft Graph enable you to subscribe to call started/ended and call roster updates for Microsoft Teams meetings."
author: "benlee-msft"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for meeting call updates in Microsoft Graph

Change notifications in Microsoft Graph enable you to subscribe to call started/ended and call roster updates for Microsoft Teams meetings. Change notifications provide a low-latency model by allowing you to maintain a subscription. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

### Subscribe to messages across all channels

To get change notifications for a meeting's call events in an application, subscribe to `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All | beta |

#### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2021-02-01T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```
## Notifications with encrypted resource data
```json
{
  "value": [{
    "subscriptionId": "{Subscription id}",
    "clientState": "{secret client state}",
    "changeType": "updated",
    "tenantId": "{Organization/Tenant id}",
    "resource": "communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
    "subscriptionExpirationDateTime": "2022-02-28T02:00:00-08:00",
    "resourceData": {
      "@odata.id": "communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
      "@odata.type": "#Microsoft.Graph.onlineMeeting",
      "id": "communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'"
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

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).

The decrypted notification payload looks like the following.
```json
{
  "@odata.type":"#Microsoft.Graph.onlineMeeting",
  "@odata.id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "eventType":"Microsoft.Communication.CallStarted",
  "eventDateTime":"2022-02-28T18:41:33.0553203Z",
  "state":"active"
}
```

You can choose to omit encryption by not including the property **includeResourceData** or setting this value to `false` in your subscrpition request body.
## Event notifications types
The following are the supported meeting events:
- CallStarted - Occurs when a meeting call is started.
- CallEnded - Occurs when a meeting call has been concluded.
- CallRosterUpdate - Occurs when a participant joins or exits a call.

**CallRosterUpdate** events will include two additional properties, **activeParticipants@delta** and **activeParticipants@remove**, to depict participants joining/leaving the meeting call in the **resourceData** property.

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
- [Online meeting resource](/graph/api/resources/onlinemeeting.md)
