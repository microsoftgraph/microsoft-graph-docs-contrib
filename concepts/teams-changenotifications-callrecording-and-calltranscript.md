---
title: "Get change notifications for meeting transcripts using Microsoft Graph"
description: "Learn how to get notifications for meeting transcripts using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for meeting transcripts using Microsoft Graph

Change notifications enable you to subscribe to changes to transcripts. You can get notified whenever a [transcript](/graph/api/resources/calltranscript) is available after an online meeting.

This article describes scenarios for the **transcript** resource. For more details, see [Change notifications for Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

## Subscribe to transcripts available at the tenant-level

To get change notifications for any transcript available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllTranscripts`. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription is supported only for meeting scheduled on the calendar.

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

To get change notifications for any transcript available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription is supported only for regular scheduled meetings.

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

## Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the transcript. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data isn't sent over).

The following shows a payload for notifications without resource data and for the transcript available for an online meeting.

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

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the transcript.

## See also

* [Microsoft Graph change notifications](webhooks.md)
* [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
* [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
* [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
* [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
* [Microsoft Teams API overview](teams-concept-overview.md)
* [Change notifications team or channel C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification-team-channel/csharp)
* [Change notifications team or channel Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-change-notification-team-channel/nodejs)
