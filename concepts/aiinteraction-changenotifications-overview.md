---
title: "Get change notifications for Copilot AI interactions using Microsoft Graph"
description: "Learn how to get change notifications for any changes (create, update, and delete) in AI interactions using Microsoft Graph."
author: "edle"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 01/09/2025
---

# Get change notifications for Copilot AI interactions using Microsoft Graph

Change notifications enable you to subscribe to Copilot [aiInteractions](/graph/api/resources/aiinteraction) across Microsoft 365. You can get notified whenever a new user query to Copilot happens or when Copilot responds to the user. You can also get the resource data in the notifications, which allows you to avoid calling the API to get the payload.

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than one hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request; otherwise, your subscription request fails with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to Copilot AI interactions for a particular user

To get change notifications for Copilot AI interactions that a particular user is part of, subscribe to `/copilot/users/{user-id}/interactionHistory/getAllEnterpriseInteractions`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AiEnterpriseInteraction.Read |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AiEnterpriseInteraction.Read.User*, AiEnterpriseInteraction.Read.All   |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

### Licensing requirements

To access this change notification resource, the user in the resource path must have the following Copilot service plan ID enabled: 
* **Microsoft 365 Copilot Chat**: 3f30311c-6b1e-48a4-ab79-725b469da960

### Example: Subscribe to Copilot AI interactions for a particular user

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/copilot/users/{user-id}/interactionHistory/getAllEnterpriseInteractions",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2024-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to Copilot AI interactions across the tenant

To get change notifications for Copilot AI interactions across the tenant, subscribe to `/copilot/interactionHistory/getAllEnterpriseInteractions`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AiEnterpriseInteraction.Read.All   |

### Licensing requirements

To access this change notification resource, the tenant must have all of the following Copilot service plan IDs provisioned and in an active state:

* **Microsoft 365 Copilot connectors in Microsoft 365 Copilot**: 82d30987-df9b-4486-b146-198b21d164c7
* **Intelligent search**: 931e4a88-a67f-48b5-814f-16a5f1e6028d
* **Microsoft 365 Copilot in Microsoft Teams**: b95945de-b3bd-46db-8437-f2beb6ea2347
* **Microsoft 365 Copilot in productivity apps**: a62f8878-de10-42f3-b68f-6149a25ceb97
* **Microsoft 365 Copilot Chat**: 3f30311c-6b1e-48a4-ab79-725b469da960
* **Power Platform connectors in Microsoft 365 Copilot**: 89f1c4c8-0878-40f7-804d-869c9128ab5d

### Example: Subscribe to Copilot AI interactions across the tenant

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/copilot/interactionHistory/getAllEnterpriseInteractions",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2024-08-10T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Using $filter to be notified of only a subset of Copilot AI interactions

You can use the `$filter` OData query parameter to filter out Copilot AI interactions that aren't needed. For example, to subscribe to Copilot AI interactions for only a particular Microsoft 365 application, such as Microsoft Teams, append `?$filter=appClass eq 'IPM.SkypeTeams.Message.Copilot.Teams'` to the end of the resource string. To subscribe to all AI interactions where the **conversationType** isn't Microsoft BizChat, append `?$filter=conversationType ne 'bizchat'`.

> [!NOTE]
> Currently, the `$filter` parameter can only be used on the top-level properties of the [aiInteraction](/graph/api/resources/aiinteraction) resource. Filter on nested properties isn't supported; for example, `?$filter=from/user/id eq '48902e20-56dc-48cf-ab15-0b65e15dda67'` isn't currently supported.

### Examples

#### Example 1: Subscribe to Copilot AI interactions for Microsoft Teams only

The following example shows how to to subscribe to Copilot AI interactions for only a particular Microsoft 365 application, such as Microsoft Teams.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/copilot/interactionHistory/getAllEnterpriseInteractions?$filter=appClass eq 'IPM.SkypeTeams.Message.Copilot.Teams'",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2024-08-10T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

#### Example 2: Subscribe to all AI interactions where the conversationType isn't Microsoft BizChat

The following example shows how to subscribe to all AI interactions where the **conversationType** isn't `bizchat`.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,deleted,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/copilot/interactionHistory/getAllEnterpriseInteractions?$filter=conversationType ne 'bizchat'",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2024-08-10T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Notifications with resource data

For notifications with resource data, the payload looks like the following.

```json
{
  "value": [
    {
      "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2025-02-02T10:30:34.9097561-08:00",
      "resource": "copilot/interactionHistory/interactions('1731701801008')",
      "resourceData": {
        "id": "1731701801008",
        "@odata.type": "#Microsoft.Graph.aiInteraction",
        "@odata.id": "copilot/interactionHistory/interactions('1731701801008')"
      },
      "encryptedContent": {
        "data": "<<--EncryptedContent-->",
        "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
        "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
        "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
      },
      "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
    }
  ],
  "validationTokens": [
    "<<--ValidationTokens-->>"
  ]
}
```

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [aiInteraction](/graph/api/resources/aiinteraction?view=graph-rest-v1.0&preserve-view=true) schema.

```json
{
  "id": "1731701801008",
  "sessionId": "19:icg2t_AWPYJyJ2oDLB_CZyh29QXpZvbdpljKf7qKotk1@thread.v2",
  "requestId": "7336770c-fb25-48ac-8303-4493ad11ed71",
  "appClass": "IPM.SkypeTeams.Message.Copilot.Teams",
  "interactionType": "aiResponse",
  "conversationType": "appchat",
  "etag": "1731701801008",
  "createdDateTime": "2024-11-15T20:16:41.008Z",
  "locale": "en-us",
  "contexts": [
    {
      "contextReference": "https://microsoft.teams.com/threads/19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
      "displayName": "Teams Meeting Copilot",
      "contextType": "TeamsMeeting"
    }
  ],
  "from": {
    "@odata.type": "#microsoft.graph.chatMessageFromIdentitySet",
    "device": null,
    "user": null,
    "application": {
      "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
      "id": "fb8d773d-7ef8-4ec0-a117-179f88add510",
      "displayName": "Copilot in Teams",
      "applicationIdentityType": "bot"
    }
  },
  "body": {
    "contentType": "text",
    "content": "I use the transcript to generate insights, and need to hear more discussion before I can get to work. Please try again in a few minutes.<attachment id=\"19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2\"></attachment>"
  },
  "attachments": [
    {
      "attachmentId": "19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
      "contentType": "reference",
      "contentUrl": "https://microsoft.teams.com/threads/19:meeting_YjQ4NThlNzUtMjEyNC00MjFlLTk0ODMtZTc2M2Q5MDVlNTE4@thread.v2",
      "content": null,
      "name": "Teams Meeting Copilot"
    }
  ],
  "links": [],
  "mentions": []
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the message content. Subscriptions for notifications without resource data don't require an encryption certificate (because Microsoft Graph doesn't send the actual resource data).

The following decrypted payload describes the information sent in a request for notifications without resource data. This particular payload signifies that a new interaction has been created.

```json
{
  "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
  "changeType": "created",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2025-02-02T10:30:34.9097561-08:00",
  "resource": "copilot/interactionHistory/interactions('1731701801008')",
  "resourceData": {
    "id": "1731701801008",
    "@odata.type": "#Microsoft.Graph.aiInteraction",
    "@odata.id": "copilot/interactionHistory/interactions('1731701801008')"
  }
}
```

## Related content
[Microsoft Graph change notifications](change-notifications-overview.md)