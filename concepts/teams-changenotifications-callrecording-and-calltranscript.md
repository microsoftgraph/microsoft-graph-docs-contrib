---
title: "Get change notifications for meeting transcripts and recordings using Microsoft Graph"
description: "Learn how to get notifications for meeting transcripts and recordings using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for meeting transcripts and recordings using Microsoft Graph

Change notifications enable you to subscribe to changes to transcripts and recordings. You can get notified whenever a [transcript](/graph/api/resources/calltranscript) or a [recording](/graph/api/resources/callrecording) is available after an online meeting.

This article describes scenarios for the **transcript** and **recording** resources. For more details, see [Change notifications for Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

## Subscribe to transcripts available at the tenant level

To get change notifications for any transcript available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllTranscripts`. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription is supported only for meetings scheduled on the calendar.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/getAllTranscripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

### Example

The following example shows how to subscribe to transcripts available at the tenant level.

```http
POST https://graph.microsoft.com/beta/subscriptions
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

## Subscribe to transcripts available for a particular online meeting

To get change notifications for any transcript available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription is supported only for meetings scheduled on the calendar.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingTranscript.Read.All            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

### Example

The following example shows how to subscribe to transcripts available for a particular online meeting.

```http
POST https://graph.microsoft.com/beta/subscriptions
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

## Subscribe to recordings available at the tenant level

To get change notifications for any recording available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllRecordings`. This subscription is supported only for regular and recurring meetings scheduled on the calendar.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

### Example

The following example shows how to subscribe to recordings available at the tenant level.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/getAllRecordings",
  "includeResourceData": false,
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available for a particular online meeting

To get change notifications for any recording available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. This subscription is supported only for regular and recurring meetings scheduled on the calendar.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All             |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

### Example

The following example shows how to subscribe to recordings available for a particular online meeting.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/recordings",
  "includeResourceData": false,
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the transcript or recording. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data isn't sent over).

For notifications without resource data, the payload looks like the following. This payload is for a transcript available for an online meeting.

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

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the transcript or recording.

For notifications without resource data, the payload looks like the following. This payload is for a recording available for an online meeting.

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

## See also

* [Microsoft Graph change notifications](webhooks.md)
* [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
* [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
* [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
* [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
* [Microsoft Teams API overview](teams-concept-overview.md)
* [Change notifications team or channel C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification-team-channel/csharp)
* [Change notifications team or channel Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-change-notification-team-channel/nodejs)
