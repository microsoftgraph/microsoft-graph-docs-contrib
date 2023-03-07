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

A subscription has a max expiry period of 3 days. To persist the subscription for more than this period, a subscription renewal request must be made. For details, see [Update subscription](/graph/api/subscription-update). Alternatively, a user can wait for the subscription to expire and create a new subscription with the same meeting resource.

To get change notifications for a meeting's call events, subscribe to `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'`. 

This resource supports notifications with resource data. For more information about setting up notifications with resource data, see [Set up change notifications that include resource data](/graph/webhooks-with-resource-data).

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
- CallStarted - Occurs when the meeting call has started.
- CallEnded - Occurs when the meeting call has ended.
- CallRosterUpdate - Occurs when a participant joins or exits the meeting call.

### Decrypted payload examples

#### CallStarted
```json
{
  "@odata.type":"#Microsoft.Graph.onlineMeeting",
  "@odata.id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "eventType":"{Microsoft.Communication.CallStarted}",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
  "state":"active"
}

```
#### CallEnded
```json
{
  "@odata.type":"#Microsoft.Graph.onlineMeeting",
  "@odata.id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "id":"communications/onlineMeetings?$filter=joinWebUrl+eq+'{joinWebUrl}'",
  "eventType":"{Microsoft.Communication.CallEnded}",
  "eventDateTime":"2022-02-28T00:00:00.0000000Z",
  "state":"inactive"
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
  "activeParticipants@joined": [
    {
      "Id": "a4d67b60-56a5-4202-9f1c-f123ff40621e",
      "Identity": 
      {
        "User": 
        {
          "Id": "f92ca67f-0564-414b-8caa-8c95b8099928",
          "DisplayName": "user display name",
          "TenantId": "85045508-f5bd-405e-a553-52700f86e29c"
        }
      }
    }
  ],
  "activeParticipants@exited": [
    {
      "Id": "11141402-1b62-4795-b540-4ffee8544231",
      "Identity": 
      {
        "AzureCommunicationServicesUser": 
        {
          "AzureCommunicationServicesResourceId": "534c244d-49f8-47a1-9e8e-70d115a2ef4d",
          "Id": "8:acs:534c244d-49f8-47a1-9e8e-70d115a2ef4d_28f01a7b-42cd-4e37-ae1a-bd653377f4b7",
          "DisplayName": "acs user display name"
        }
      }
    }
  ]
}
```

**CallRosterUpdate** events include two properties, **activeParticipants@joined** to depict participants added to a meeting call and **activeParticipants@exited** for participants leaving the meeting call. 

An active participant is represented as follows:

```json
{
  "Id": "string",
  "Identity": "microsoft.graph.communicationsIdentitySet"
}
```

- The **Id** property corresponds to participant ID, which is a unique identifier assigned to each participant in the meeting call.
- The **Identity** property corresponds to the **communicationsIdentitySet**. For details, see [communicationsIdentitySet resource type](/graph/api/resources/communicationsidentityset?view=graph-rest-beta&preserve-view=true).

## See also

- [Microsoft Graph change notifications](/graph/webhooks)
- [Microsoft Teams API overview](/graph/teams-concept-overview)
- [Online meeting resource](/graph/api/resources/onlineMeeting)
- [Meeting notification C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-meeting-notification/csharp)
- [Meeting notification Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-meeting-notification/csharp)
