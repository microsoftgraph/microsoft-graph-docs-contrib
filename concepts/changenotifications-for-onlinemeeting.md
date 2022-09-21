---
title: "Get change notifications for Microsoft Teams meeting call updates"
description: "Use change notifications in Microsoft Graph to enable you to subscribe to call started/ended and call roster updates for Microsoft Teams online meetings."
author: "benlee-msft"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Get change notifications for Microsoft Teams meeting call updates

Change notifications in Microsoft Graph enable you to subscribe to call started/ended and call roster updates for Microsoft Teams online meetings. Change notifications provide a low-latency model by allowing you to maintain a subscription. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

## Subscribe to messages across all channels

To get change notifications for a meeting's call events in an application, subscribe to `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'`. This resource supports [including resource data](/graph/webhooks-with-resource-data) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All | beta |

### Example

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

> [!NOTE]
> Replace `{JoinWebUrl}` with the actual value when specifying the resource. The JoinWebURL for the meeting is included in the **joinWebUrl** property of the [onlineMeeting](/graph/api/resources/onlineMeeting) resource, or in the Teams client for a meeting.

## Notifications with encrypted resource data

```json
{
  "value": [{
    "subscriptionId": "{Subscription id}",
    "clientState": "{secret client state}",
    "changeType": "updated",
    "tenantId": "{Organization/Tenant id}",
    "resource": "communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
    "subscriptionExpirationDateTime": "2022-02-28T00:00:00.0000000Z",
    "resourceData": {
      "@odata.id": "communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
      "@odata.type": "#microsoft.graph.onlineMeeting",
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

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](/graph/webhooks-with-resource-data).

## Event notifications types

The following are the supported meeting events:
- CallStarted - Occurs when a meeting call is started.
- CallEnded - Occurs when a meeting call has been concluded.
- CallRosterUpdate - Occurs when a participant joins or exits a call.

### Decrypted payload examples

#### CallStarted/CallEnded

```json
{
  "@odata.type":"#Microsoft.Graph.onlineMeeting",
  "@odata.id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "eventType":"{Microsoft.Communication.CallStarted or Microsoft.Communication.CallEnded}",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
  "state":"active"
}
```

#### CallRosterUpdate

```json
{
  "@odata.type":"#Microsoft.Graph.onlineMeeting",
  "@odata.id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "eventType":"Microsoft.Communication.CallRosterUpdate",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
  "state":"active",
  "activeParticipants@delta": ["{meetingParticipantInfo list of users that joined}"],
  "activeParticipants@remove": ["{meetingParticipantInfo list of users that left}"]
}
```

**CallRosterUpdate** events include two additional properties, **activeParticipants@delta** to depict participants added to a meeting and **activeParticipants@remove** for participants leaving the online meeting. For more information about participants, see [meetingParticipantInfo resource type](/graph/api/resources/meetingparticipantinfo).

You can choose to omit encryption by not including the property **includeResourceData** or setting this value to `false` in your subscription request body. Doing so adds the properties that would have been part of the encrypted payload to **resourceData**.

## See also

- [Microsoft Graph change notifications](/graph/webhooks)
- [Microsoft Teams API overview](/graph/teams-concept-overview)
- [Online meeting resource](/graph/api/resources/onlineMeeting)
