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

This article describes scenarios for the **transcript** and **recording** resources. For more information, see [Change notifications for Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise, your subscription request will fail with the following error message: *lifecycleNotificationUrl is required for subscription creation on this resource when the expirationDateTime value exceeds 1 hour*.

## Subscribe to transcripts available at the tenant-level

To get change notifications for any transcript available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

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
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/getAllTranscripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available for a particular online meeting

To get change notifications for any transcript available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingTranscript.Read.All            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

### Example

The following example shows how to subscribe to transcripts available for online meetings.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/transcripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available at the user level

To get change notifications for any transcript available for any online meeting organized by a specific user, subscribe to `users/{userId}/onlineMeetings/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/onlineMeetings/getAllTranscripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | OnlineMeetingTranscript.Read.All            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

### Example

The following example shows how to subscribe to transcripts available for any online meeting organized by a specific user.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "users/{userId}/onlineMeetings/getAllTranscripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available at the tenant level

To get change notifications for any recording available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

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

## Subscribe to recordings available for a particular online meeting

To get change notifications for any recording available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All             |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

### Example

The following example shows how to subscribe to recordings available for online meetings.

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

## Subscribe to recordings available at the user level

To get change notifications for any recording available for any online meeting organized by a specific user, subscribe to `users/{userId}/onlineMeetings/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/onlineMeetings/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All             |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

### Example

The following example shows how to subscribe to recordings available for any online meeting organized by a specific user.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "users/{userId}/onlineMeetings/getAllRecordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Notification payloads

Depending on your subscription, you can get the notification with or without resource data. Subscribing with resource data allows you to get the [transcript](/graph/api/resources/calltranscript) or [recording](/graph/api/resources/callrecording) metadata along with the notification.

### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for a transcript available for an online meeting.

```json
{
  "value": [
    {
      "subscriptionId": "516220d0-0f88-46cc-ac39-02b687687526",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2023-09-17T08:13:26.3265566+00:00",
      "resource": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy')/transcripts('MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx')",
      "resourceData": {
        "id": "MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx",
        "@odata.type": "#Microsoft.Graph.callTranscript",
        "@odata.id": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy')/transcripts('MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx')"
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
  "validationTokens": [
    "<<--ValidationTokens-->>"
  ]
}
```

The decrypted notification payload looks like the following. The payload conforms to the [transcript](/graph/api/resources/calltranscript) schema. The payload is similar to the ones returned by GET operations.

```json
{
  "id": "MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx",
  "meetingId": "MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy",
  "transcriptContentUrl": "communications/onlineMeetings/MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy/transcripts/MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx/content",
  "createdDateTime": null,
  "meetingOrganizer": {
    "application": null,
    "device": null,
    "user": {
      "userIdentityType": "aadUser",
      "id": "976f4b31-fd01-4e0b-9178-29cc40c14438",
      "displayName": null,
      "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
    }
  }
}
```

For notifications with resource data, the payload looks like the following. This payload is for a recording available for an online meeting.

```json
{
  "value": [
    {
      "subscriptionId": "7a62d59e-a789-4dd7-9c85-cf7d6567890d",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2023-09-17T08:20:06.9211285+00:00",
      "resource": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy')/recordings('VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=')",
      "resourceData": {
        "id": "VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=",
        "@odata.type": "#Microsoft.Graph.callRecording",
        "@odata.id": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy')/recordings('VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=')"
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
  "validationTokens": [
    "<<--ValidationTokens-->>"
  ]
}
```

The decrypted notification payload looks like the following. The payload conforms to the [recording](/graph/api/resources/callrecording) schema. The payload is similar to the ones returned by GET operations.

```json
{
  "id": "VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=",
  "meetingId": "MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy",
  "createdDateTime": "2023-07-25T09:35:02.85022Z",
  "recordingContentUrl": "communications/onlineMeetings/MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy/recordings/VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=/content",
  "meetingOrganizer": {
    "application": null,
    "device": null,
    "user": {
      "userIdentityType": "aadUser",
      "id": "976f4b31-fd01-4e0b-9178-29cc40c14438",
      "displayName": null,
      "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
    }
  },
  "content": null
}
```

### Notifications without resource data

Notifications without resource data give you the resource ID to make GET calls to get the transcript or recording. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data isn't sent over).

For notifications without resource data, the payload looks like the following. This payload is for a transcript available for an online meeting.

```json
{
  "subscriptionId": "0cc28c98-4d2a-4a34-b850-815d7e6486ea",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-09-17T08:29:11.3173971+00:00",
  "resource": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy')/transcripts('MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx')",
  "resourceData": {
    "id": "MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx",
    "@odata.type": "#Microsoft.Graph.callTranscript",
    "@odata.id": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19aalk0TXpRNU9UQXRZamxqWWkwMFpESXdMVGczTkdZdFptUTNNRGhtWm1FMk9EVTNAdGhyZWFkLnYy')/transcripts('MSMjMCMjOGIzMmI0MzktY2QxNy00ODc1LTg1NWQtYzA1MDM0ZmFkZWMx')"
  }
}
```

For notifications without resource data, the payload looks like the following. This payload is for a recording available for an online meeting.

```json
{
  "subscriptionId": "6aa5ced2-0a5a-4643-9274-3109c731d986",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-09-17T08:27:05.0241757+00:00",
  "resource": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy')/recordings('VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=')",
  "resourceData": {
    "id": "VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=",
    "@odata.type": "#Microsoft.Graph.callRecording",
    "@odata.id": "communications/onlineMeetings('MSo5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgqMCoqMTk6bWVldGluZ19NMk0zTlRReFkySXRaamsyWmkwME5UTTRMV0l4TTJFdE1EQmtPV1E1TW1Rek0yRXhAdGhyZWFkLnYy')/recordings('VjIjIzE5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0MzgyNDMyYjU3Yi0wYWJkLTQzZGItYWE3Yi0xNmVhZGQxMTVkMzQwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODAwMDAwMDAwMDZhODllMWZkYmJlZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDA5NzUzYzg5ZWI3MmJkNDJiYWZjMTVkZDA4NWNmNWJlIyNjZmNjNTBjMy0zODllLTQyOTUtOWRiNy1mMjkwYWY2NDJlNzI=')"
  }
}
```

The **resource** and **@odata.id** properties can be used to call Microsoft Graph to get the transcript or recording.

## Related content

* [Microsoft Graph change notifications](change-notifications-overview.md)
* [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
* [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
* [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
* [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
* [Microsoft Teams API overview](teams-concept-overview.md)
* [Change notifications team or channel C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification-team-channel/csharp)
* [Change notifications team or channel Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-change-notification-team-channel/nodejs)
