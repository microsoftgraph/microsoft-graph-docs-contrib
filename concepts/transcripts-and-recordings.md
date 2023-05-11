---
title: "Get change notification for meeting transcripts and recordings using Microsoft Graph"
description: "Learn how to get notifications for meeting transcripts and recordings using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notification for meeting transcripts and recordings using Microsoft Graph

Change notifications enable you to subscribe to changes (create) to transcripts and recordings. You can get notified whenever a transcript or recording is available after an online meeting.

Continue with this article about scenarios for the transcript or recording resource. Or, find out about change notifications for other Microsoft Teams resources.

## Subscribe to any transcripts being available at tenant level

To get change notifications for any transcript being available for any online meeting for a tenant, subscribe to `communications/onlineMeetings/getAllTranscripts`. The notification for a transcript will be sent only if subscription is made before transcription starts. This subscription is supported only for regular scheduled meetings.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported   |
|Application | OnlineMeetingTranscript.Read.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/getAllTranscripts",
  "includeResourceData": false,
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to any transcripts being available for a particular online meeting

To get change notifications for any transcript being available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. The notification for a transcript will be sent only if subscription is made before transcription starts. This subscription is supported only for regular scheduled meetings.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OnlineMeetingTranscript.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | OnlineMeetingTranscript.Read.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/transcripts",
  "includeResourceData": false,
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to any recordings being available at tenant level

To get change notifications for any recording being available for any online meeting for a tenant, subscribe to `communications/onlineMeetings/getAllRecordings`. This resource supports including resource data in the notification. This subscription is supported only for regular scheduled and recurring meetings.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported |
|Delegated (personal Microsoft account) | Not supported   |
|Application | OnlineMeetingRecording.Read.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/getAllRecordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to any recordings being available for a particular online meeting

To get change notifications for any recording being available for a particular online meeting, subscribe to communications/onlineMeetings/{onlineMeetingId}/recordings. This resource supports including resource data in the notification. This subscription is supported only for regular scheduled and recurring meetings.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OnlineMeetingRecording.Read.All |
|Delegated (personal Microsoft account) | Not supported   |
|Application | OnlineMeetingRecording.Read.All   |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/recordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for a recording being available for an online meeting.

```json
{
  "value": [
    {
      "subscriptionId": "265009c7-312c-4594-981f-f620d31abdd3",
      "changeType": "created",
      "clientState": "ClientSecret",
      "subscriptionExpirationDateTime": "2023-04-11T11:00:00.0000000-08:00",
      "resource": "communications/onlineMeetings('MSphZDJlYTFhOS0xNTdmLTQ3ZTItOTQ3ZS1iZmVkMWM5MDk3ZTQqMCoqMTk6bWVldGluZ19NR001T0dGbFpqQXROV1V5WkMwMFlqSTVMV0kyTkRBdE4ySXhaalEwTjJFeE1qRmhAdGhyZWFkLnYy')/recordings('ea1089e0-edf9-4044-9c6d-fc44dcaaf38e')",
      "resourceData": {
        "id": "ea1089e0-edf9-4044-9c6d-fc44dcaaf38e",
        "@odata.type": "#Microsoft.Graph.callRecording",
        "@odata.id": "communications/onlineMeetings('MSphZDJlYTFhOS0xNTdmLTQ3ZTItOTQ3ZS1iZmVkMWM5MDk3ZTQqMCoqMTk6bWVldGluZ19NR001T0dGbFpqQXROV1V5WkMwMFlqSTVMV0kyTkRBdE4ySXhaalEwTjJFeE1qRmhAdGhyZWFkLnYy')/recordings('ea1089e0-edf9-4044-9c6d-fc44dcaaf38e')"
      },
      "EncryptedContent": {
        "data": "<<--EncryptedContent-->>",
        "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
        "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
        "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
      },
      "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
    }
  ],
  "validationTokens": ["<<--ValidationTokens-->>"]
}

```

The decrypted notification payload looks like the following. The payload conforms to the recording[links to the new callRecording resource type page] schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "MSpNQSpkMDBhZTc2NS02YzZiLTQ2NDEtODAxZC0xOTMyYWYyMTM3N2E=",            
   "createdDateTime": "2021-09-01T07:48:50.1418898Z"
},

```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the transcript/recording. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data is not sent over).
For notifications without resource data, the payload looks like the following. This payload is for a transcript being available for an online meeting.

```json
{
  "subscriptionId": "265009c7-312c-4594-981f-f620d31abdd3",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-03-20T11:00:00.0000000-08:00",
  "resource": "communications/onlineMeetings('MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19PVE0yTURZellUa3ROalkyT1MwMFlXRmxMVGcyWm1RdE5XTXdaalF5WlRJMk9XVmlAdGhyZWFkLnYy')/transcripts('MSMjMCMjNTYyN2ZiZDctNjFlNS00NGNmLWE0ZTQtYTQ1ODJhYTdmNGQ3')",
  "resourceData": {
    "id": "MSMjMCMjNTYyN2ZiZDctNjFlNS00NGNmLWE0ZTQtYTQ1ODJhYTdmNGQ3",
    "@odata.type": "#Microsoft.Graph.callTranscript",
    "@odata.id": "communications/onlineMeetings('MSoxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19PVE0yTURZellUa3ROalkyT1MwMFlXRmxMVGcyWm1RdE5XTXdaalF5WlRJMk9XVmlAdGhyZWFkLnYy')/transcripts('MSMjMCMjNTYyN2ZiZDctNjFlNS00NGNmLWE0ZTQtYTQ1ODJhYTdmNGQ3')"
  }
}

```

The resource and @odata.id properties can be used to make calls to Microsoft Graph to get the transcript/recording.

For notifications without resource data, the payload looks like the following. This payload is for a recording being available for an online meeting.

```json
{
  "subscriptionId": "265009c7-312c-4594-981f-f620d31abdd3",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-03-20T11:00:00.0000000-08:00",
  "resource": "communications/onlineMeetings('MSphZDJlYTFhOS0xNTdmLTQ3ZTItOTQ3ZS1iZmVkMWM5MDk3ZTQqMCoqMTk6bWVldGluZ19NR001T0dGbFpqQXROV1V5WkMwMFlqSTVMV0kyTkRBdE4ySXhaalEwTjJFeE1qRmhAdGhyZWFkLnYy')/recordings('ea1089e0-edf9-4044-9c6d-fc44dcaaf38e')",
  "resourceData": {
        "id": "ea1089e0-edf9-4044-9c6d-fc44dcaaf38e",
        "@odata.type": "#Microsoft.Graph.callRecording",
        "@odata.id": "communications/onlineMeetings('MSphZDJlYTFhOS0xNTdmLTQ3ZTItOTQ3ZS1iZmVkMWM5MDk3ZTQqMCoqMTk6bWVldGluZ19NR001T0dGbFpqQXROV1V5WkMwMFlqSTVMV0kyTkRBdE4ySXhaalEwTjJFeE1qRmhAdGhyZWFkLnYy')/recordings('ea1089e0-edf9-4044-9c6d-fc44dcaaf38e')"
      }
}

```
