---
title: "Get change notifications for transcripts and recordings using Microsoft Graph"
description: "Learn how to get notifications for transcripts and recordings using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 09/18/2025
---

# Get change notifications for transcripts and recordings using Microsoft Graph

Change notifications enable you to subscribe to changes to transcripts and recordings. You can get notified whenever a [transcript](/graph/api/resources/calltranscript) or a [recording](/graph/api/resources/callrecording) is available after an online meeting or an ad hoc call.

This article describes scenarios for the **transcript** and **recording** resources. For more information, see [Change notifications for Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise, your subscription request fails with the following error message: *lifecycleNotificationUrl is required for subscription creation on this resource when the expirationDateTime value exceeds 1 hour*.

## Subscribe to transcripts available at the tenant level

This section describes the methods to subscribe to transcripts available at the tenant level for both online meetings and ad hoc calls.

### For online meetings

To get change notifications for any transcript available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't currently support private channel meetings.

#### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/getAllTranscripts`.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

#### Example

The following example shows how to subscribe to **online meeting** transcripts available at the tenant level.

<!-- { "blockType": "ignored" } -->
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

### For ad hoc calls

To get change notifications for any transcript available for any ad hoc call in a tenant, subscribe to `communications/adhocCalls/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

> [!NOTE]
> This resource type is available only on the `/beta` endpoint.

#### Permissions

One of the following permissions is required to subscribe to `communications/adhocCalls/getAllTranscripts`.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CallTranscripts.Read.All               |

To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

#### Example

The following example shows how to subscribe to **ad hoc call** transcripts available at the tenant level.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/adhocCalls/getAllTranscripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "{expirationDateTime}",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available for a particular online meeting

To get change notifications for any transcript available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't currently support private channel meetings.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/transcripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingTranscript.Read.All            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.Chat, OnlineMeetingTranscript.Read.All            |

> [!NOTE]
>
> - The `OnlineMeetingTranscript.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). This permission applies only to scheduled private chat meetings, not to channel meetings.
> - To subscribe to any transcript available for a particular online meeting by using only required [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions, use the `useResourceSpecificConsentBasedAuthorization=true` query parameter with your resource string.

### Example 1: Subscribe to transcripts available for a particular online meeting using classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
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

### Example 2: Subscribe to transcripts available for a particular online meeting using resource-specific consent permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/transcripts?useResourceSpecificConsentBasedAuthorization=true",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available for a particular ad hoc call

To get change notifications for any transcript available for a particular ad hoc call, subscribe to `communications/adhocCalls/{adhocCallId}/transcripts`.

### Permissions

One of the following permissions is required to subscribe to `communications/adhocCalls/{adhocCallId}/transcripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CallTranscripts.Read.All                    |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

### Example: Subscribe to transcripts available for a particular ad hoc call using classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/adhocCalls/{adhocCallId}/transcripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available for online meetings organized by a user

To get change notifications for any transcript available for any online meeting organized by a specific user, subscribe to `users/{userId}/onlineMeetings/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't currently support private channel meetings.

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/onlineMeetings/getAllTranscripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | OnlineMeetingTranscript.Read.All            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.All            |

### Example

The following example shows how to subscribe to transcripts available for any online meeting organized by a specific user.

<!-- { "blockType": "ignored" } -->
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

## Subscribe to transcripts available for ad hoc call where a specific user initiates transcription

To get change notifications for any transcript available for any ad hoc call where a specific user initiates the transcription, subscribe to `users/{userId}/adhocCalls/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports [ad hoc calls](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true).

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/adhocCalls/getAllTranscripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CallTranscripts.Read.All                    |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CallTranscripts.Read.All                    |

### Example

The following example shows how to subscribe to transcripts available for any ad hoc call where a specific user initiates transcription.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "users/{userId}/adhocCalls/getAllTranscripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to transcripts available for any online meeting where a specific Teams app is installed

To get change notifications for any transcript available for any online meeting where a specific Teams app is installed, subscribe to `appCatalogs/teamsApps/{teams-app-id}/installedToOnlineMeetings/getAllTranscripts`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. The notification for a transcript is sent only if the subscription happens before the transcription starts. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

> [!NOTE]
> This resource type is available only on the `/beta` endpoint.

### Permissions

One of the following permissions is required to subscribe to `appCatalogs/teamsApps/{teams-app-id}/installedToOnlineMeetings/getAllTranscripts`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingTranscript.Read.Chat, OnlineMeetingTranscript.Read.All |

> [!NOTE]
>
> - The `OnlineMeetingTranscript.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).
> - To subscribe to transcripts available for any online meeting where a specific Teams app is installed using only required [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions, use the `useResourceSpecificConsentBasedAuthorization=true` query parameter with your resource string.

### Example 1: Subscribe to transcripts available for any online meeting where a specific Teams app is installed using classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "appCatalogs/teamsApps/386bbcdb-1e1c-4f3f-b7d0-ad7b9ea6cf7c/installedToOnlineMeetings/getAllTranscripts",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 2: Subscribe to transcripts available for any online meeting where a specific Teams app is installed using only resource-specific consent permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "appCatalogs/teamsApps/386bbcdb-1e1c-4f3f-b7d0-ad7b9ea6cf7c/installedToOnlineMeetings/getAllTranscripts?useResourceSpecificConsentBasedAuthorization=true",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available at tenant level

This section describes the methods to subscribe to recordings available at the tenant level for both online meetings and ad hoc calls.

### For online meetings

To get change notifications for any recording available for any online meeting in a tenant, subscribe to `communications/onlineMeetings/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't support private channel meetings.

#### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

#### Example

The following example shows how to subscribe to recordings available at the tenant level for online meetings.

<!-- { "blockType": "ignored" } -->
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

### For ad hoc calls

To get change notifications for any recording available for any ad hoc call in a tenant, subscribe to `communications/adhocCalls/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports [adhocCalls](/graph/api/resources/adhoccall).

#### Permissions

One of the following permissions is required to subscribe to `communications/adhocCalls/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CallRecordings.Read.All                     |

#### Example

The following example shows how to subscribe to recordings available at the tenant level.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/adhocCalls/getAllRecordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available for a particular online meeting

To get change notifications for any recording available for a particular online meeting, subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't currently support private channel meetings.

### Permissions

One of the following permissions is required to subscribe to `communications/onlineMeetings/{onlineMeetingId}/recordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All             |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.Chat, OnlineMeetingRecording.Read.All |

> [!NOTE]
>
> - The `OnlineMeetingRecording.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent). This permission applies only to scheduled private chat meetings, not to channel meetings.
> - To subscribe to any recording available for a particular online meeting using only required [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions, use the `useResourceSpecificConsentBasedAuthorization=true` query parameter with your resource string.

#### Example 1: Subscribe to recordings available for a particular online meeting using classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
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

### Example 2: Subscribe to recordings available for a particular online meeting using only resource-specific consent permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/onlineMeetings/{onlineMeetingId}/recordings?useResourceSpecificConsentBasedAuthorization=true",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available for a particular ad hoc call

To get change notifications for any recording available for a particular ad hoc call, subscribe to `communications/adhocCalls/{adhocCallId}/recordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports [ad hoc calls](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true).

### Permissions

One of the following permissions is required to subscribe to `communications/adhocCalls/{adhocCallId}/recordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CallRecordings.Read.All                     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CallRecordings.Read.All                     |

### Example: Subscribe to recordings available for a particular ad hoc call using classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "communications/adhocCalls/{adhocCallId}/recordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available for online meetings organized by a user

To get change notifications for any recording available for any online meeting organized by a specific user, subscribe to `users/{userId}/onlineMeetings/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting).

> [!NOTE]
> This subscription doesn't currently support private channel meetings.

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/onlineMeetings/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | OnlineMeetingRecording.Read.All             |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.All             |

## Subscribe to recordings available for ad hoc call where a specific user initiates transcription

To get change notifications for any recording available for any ad hoc call where a specific user initiates transcription, subscribe to `users/{userId}/adhocCalls/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports [ad hoc calls](/graph/api/resources/adhoccall?view=graph-rest-beta&preserve-view=true).

### Permissions

One of the following permissions is required to subscribe to `users/{userId}/adhocCalls/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CallRecordings.Read.All                     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CallRecordings.Read.All                     |

### Example

The following example shows how to subscribe to recordings available for any ad hoc call where a specific user initiates transcription.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "users/{userId}/adhocCalls/getAllRecordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-04-11T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to recordings available for any online meeting where a specific Teams app is installed

This section describes the methods to subscribe to recordings available for any online meeting where a specific Teams app is installed.

To get change notifications for any recording available for any online meeting where a specific Teams app is installed, subscribe to `appCatalogs/teamsApps/{teams-app-id}/installedToOnlineMeetings/getAllRecordings`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification. This subscription supports scheduled [onlineMeetings](/graph/api/resources/onlinemeeting) but not channel meetings.

> [!NOTE]
> This resource type is available only on the `/beta` endpoint.

### Permissions

One of the following permissions is required to subscribe to `appCatalogs/teamsApps/{teams-app-id}/installedToOnlineMeetings/getAllRecordings`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingRecording.Read.Chat, OnlineMeetingRecording.Read.All |

> [!NOTE]
>
> - The `OnlineMeetingRecording.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).
> - To subscribe to recordings available for any online meeting where a specific Teams app is installed using only required [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions, use the `useResourceSpecificConsentBasedAuthorization=true` query parameter with your resource string.

#### Example 1: Subscribe to recordings available for any online meeting where a specific Teams app is installed using required classic permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "appCatalogs/teamsApps/386bbcdb-1e1c-4f3f-b7d0-ad7b9ea6cf7c/installedToOnlineMeetings/getAllRecordings",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

#### Example 2: Subscribe to recordings available for any online meeting where a specific Teams app is installed using only resource-specific consent permissions

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "appCatalogs/teamsApps/386bbcdb-1e1c-4f3f-b7d0-ad7b9ea6cf7c/installedToOnlineMeetings/getAllRecordings?useResourceSpecificConsentBasedAuthorization=true",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2023-03-20T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Notification payloads

Depending on your subscription, you can get the notification with or without resource data. Subscribing with resource data allows you to get the [transcript](/graph/api/resources/calltranscript) or [recording](/graph/api/resources/callrecording) metadata along with the notification.

### Notifications with resource data for transcripts

For notifications with resource data, the payload looks like the following. This payload is for a transcript available for an online meeting. For ad hoc calls, the **meetingId** is `null`.

> [!NOTE]
> The payload object shown here's shortened for readability.

#### For online meetings

<!-- { "blockType": "ignored" } -->
```json
{
  "value": [
    {
      "subscriptionId": "516220d0-0f88-46cc-ac39-02b687687526",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2023-09-17T08:13:26.3265566+00:00",
      "resource": "users/{organizer-id}/onlineMeetings('Mso...')/transcripts('MSM...')",
      "resourceData": {
        "id": "MSM...",
        "@odata.type": "#Microsoft.Graph.callTranscript",
        "@odata.id": "users/{organizer-id}/onlineMeetings('Mso...')/transcripts('MSM...')"
      },
      "encryptedContent": {
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

#### For ad hoc calls

<!-- { "blockType": "ignored" } -->
```json
{
  "value": [
    {
      "subscriptionId": "8c0ff21a-ca3b-45db-b570-e589a7d3d02d",
      "changeType": "created",
      "clientState": "null",
      "subscriptionExpirationDateTime": "2025-08-08T06:29:30.356Z",
      "resource": "users/f2e8e111-3887-4936-87f8-639292c70d34/adhoccalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts('MyM...')",
      "resourceData": {
        "id": "f2e8e111-3887-4936-87f8-639292c70d34",
        "@odata.type": "#Microsoft.Graph.callTranscript",
        "@odata.id": "users/{user-id}/adhoccalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts('MyM...')"
      },
      "encryptedContent": {
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

### Decrypted notifications for transcripts with resource data

The decrypted notification payload looks like the following. The payload conforms to the [transcript](/graph/api/resources/calltranscript) schema. The payload is similar to the ones returned by GET operations.

> [!NOTE]
> The payload object shown here's shortened for readability.

#### For online meetings

<!-- { "blockType": "ignored" } -->
```json
{
  "id": "MSM...",
  "meetingId": "MSo...",
  "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
  "transcriptContentUrl": "users/{organizer-id}/onlineMeetings/MSo.../transcripts/MSM.../content",
  "createdDateTime": null,
  "endDateTime": "2023-04-10T08:27:25.2346000Z",
  "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
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

#### For ad hoc calls

<!-- { "blockType": "ignored" } -->
```json
{
  "id": "MyM...",
  "meetingId": null,
  "callId": "5f3640e7-a59c-4bec-82ca-e66251f795b7",
  "transcriptContentUrl": "users/f2e8e111-3887-4936-87f8-639292c70d34/adhoccalls/5f3640e7-a59c-4bec-82ca-e66251f795b7/transcripts/MyM.../content",
  "createdDateTime": null,
  "endDateTime": "2025-08-11T06:57:28.2265904Z",
  "contentCorrelationId": "58cfc66a-710f-4be7-adc0-1ca5a28f2c0c-0",
  "meetingOrganizer": {
    "application": null,
    "device": null,
    "user": {
      "userIdentityType": "aadUser",
      "id": "f2e8e111-3887-4936-87f8-639292c70d34",
      "displayName": null,
      "tenantId": "8393309d-9fb7-4cce-aafb-eedc8c5781e2"
    }
  }
}
```

### Notifications with resource data for recordings 

For notifications with resource data, the payload looks like the following.

> [!NOTE]
> The payload object shown here's shortened for readability.

#### For online meetings

<!-- { "blockType": "ignored" } -->
```json
{
  "value": [
    {
      "subscriptionId": "7a62d59e-a789-4dd7-9c85-cf7d6567890d",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2023-09-17T08:20:06.9211285+00:00",
      "resource": "users/{organizer-id}/onlineMeetings('Mso...')/recordings('VjI...')",
      "resourceData": {
        "id": "VjI...",
        "@odata.type": "#Microsoft.Graph.callRecording",
        "@odata.id": "users/{organizer-id}/onlineMeetings('Mso...')/recordings('VjI...')"
      },
      "encryptedContent": {
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

#### For ad hoc calls

<!-- { "blockType": "ignored" } -->
```json
{
  "value": [
    {
      "subscriptionId": "871b5d27-6f77-4100-b78d-bc443873324e",
      "changeType": "created",
      "clientState": "<<--SpecifiedClientState-->>",
      "subscriptionExpirationDateTime": "2025-07-24T18:04:24.3511596+00:00",
      "resource": "users/{user-id}/adhoccalls('1c9ddbc9-82be-46b6-8edd-bf833fe33a03')/recordings('MyMjMTk6ODA4MTExMTNiYWQzNDNhYzkzNGI2YTVmYzc1ZThmZGJAdGhyZWFkLnYyIyM1MTYwNzQ4MC1kM2FjLTRlZTQtOTQ3NS1lYjM2NTk5MjM4ZDYtMTc1MzM0NTA2OC1UcmFuc2NyaXB0VjI=')",
      "resourceData": {
        "id": "MyM...",
        "@odata.type": "#Microsoft.Graph.callRecording",
        "@odata.id": "users/{user-id}/adhoccalls('1c9ddbc9-82be-46b6-8edd-bf833fe33a03')/recordings(MyMjMTk6ODA4MTExMTNiYWQzNDNhYzkzNGI2YTVmYzc1ZThmZGJAdGhyZWFkLnYyIyM1MTYwNzQ4MC1kM2FjLTRlZTQtOTQ3NS1lYjM2NTk5MjM4ZDYtMTc1MzM0NTA2OC1UcmFuc2NyaXB0VjI=)",
      },
      "encryptedContent": {
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

### Decrypted notifications for recordings with resource data

The decrypted notification payload looks like the following. The payload conforms to the [recording](/graph/api/resources/callrecording) schema. The payload is similar to the ones returned by GET operations.

> [!NOTE]
> The payload object shown here's shortened for readability.

<!-- { "blockType": "ignored" } -->
```json
{
  "id": "VjI...",
  "meetingId": "MSo...",
  "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
  "createdDateTime": "2023-07-25T09:35:02.85022Z",
  "endDateTime": "2023-04-10T08:27:25.2346000Z",
  "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
  "recordingContentUrl": "users/{organizer-id}/MSo.../recordings/VjI.../content",
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

For notifications without resource data, the payload looks like the following.

> [!NOTE]
> The payload object shown here's shortened for readability.

#### For online meeting transcripts

<!-- { "blockType": "ignored" } -->
```json
{
  "subscriptionId": "0cc28c98-4d2a-4a34-b850-815d7e6486ea",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-09-17T08:29:11.3173971+00:00",
  "resource": "users/{organizer-id}/onlineMeetings('Mso...')/transcripts('MSM...')",
  "resourceData": {
    "id": "MSM...",
    "@odata.type": "#Microsoft.Graph.callTranscript",
    "@odata.id": "users/{organizer-id}/onlineMeetings('Mso...')/transcripts('MSM...')"
  }
}
```

#### For ad hoc call transcripts 

For notifications without resource data, the payload looks like the following. This payload is for a transcript available for an ad hoc call. For ad hoc calls, the **meetingId** is `null`.

<!-- { "blockType": "ignored" } -->
```json
{
  "subscriptionId": "871b5d27-6f77-4100-b78d-bc443873324e",
  "changeType": "created",
  "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2025-07-24T18:04:24.3511596+00:00",
  "resource": "users/{user-id}/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/transcripts/MyMjMTk6ODA4MTExMTNiYWQzNDNhYzkzNGI2YTVmYzc1ZThmZGJAdGhyZWFkLnYyIyM1MTYwNzQ4MC1kM2FjLTRlZTQtOTQ3NS1lYjM2NTk5MjM4ZDYtMTc1MzM0NTA2OC1UcmFuc2NyaXB0VjI=",
  "resourceData": {
    "id": "MyM...",
    "@odata.type": "#Microsoft.Graph.callTranscript",
    "@odata.id": "users/{user-id}/adhoccalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/transcripts('MyM...')"
  }
}
```

For notifications without resource data, the payload looks like the following.

> [!NOTE]
> The payload object shown here's shortened for readability.

#### For online meeting recordings

<!-- { "blockType": "ignored" } -->
```json
{
  "subscriptionId": "6aa5ced2-0a5a-4643-9274-3109c731d986",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2023-09-17T08:27:05.0241757+00:00",
  "resource": "users/{organizer-id}/onlineMeetings('Mso...')/recordings('VjI...')",
  "resourceData": {
    "id": "VjI...",
    "@odata.type": "#Microsoft.Graph.callRecording",
    "@odata.id": "users/{organizer-id}/onlineMeetings('Mso...')/recordings('VjI...')"
  }
}
```

#### For ad hoc call recordings

<!-- { "blockType": "ignored" } -->
```json
{
"subscriptionId": "871b5d27-6f77-4100-b78d-bc443873324e",
  "changeType": "created",
  "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2025-07-24T18:04:24.3511596+00:00",
  "resource": "users/{user-id}/adhoccalls/adhocCalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings('MyM...')",
  "resourceData": {
    "id": "MyM...",
    "@odata.type": "#Microsoft.Graph.callRecording",
    "@odata.id": "users/{user-id}/adhoccalls/1c9ddbc9-82be-46b6-8edd-bf833fe33a03/recordings('MyM...')"
  }
}
```

The **resource** and **@odata.id** properties can be used to call Microsoft Graph to get the transcript or recording.

## Related content

- [Microsoft Graph change notifications](change-notifications-overview.md)
- [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
- [Get change notifications for membership changes in channels using Microsoft Graph](teams-changenotifications-channelmembership.md)
- [Get change notifications for membership changes in teams using Microsoft Graph](teams-changenotifications-teammembership.md)
- [Get change notifications for messages in Teams channels and chats using Microsoft Graph](teams-changenotifications-chatmessage.md)
- [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
- [Change notifications team or channel C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification-team-channel/csharp)
- [Change notifications team or channel Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-change-notification-team-channel/nodejs)
