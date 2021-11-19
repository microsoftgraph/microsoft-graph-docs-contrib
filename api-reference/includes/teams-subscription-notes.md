---
author: nkramer
ms.topic: include
ms.date: 01/25/2021
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions with delegated permissions do not support resource data (**includeResourceData** must be `false`), and do not require [encryption](/graph/webhooks-with-resource-data). The only exception is the `/users/{id}/chats/getAllMessages` resource (only available in beta) which supports resource data regardless of the permission type.

**chatMessage** subscriptions with application permissions include resource data, and require [encryption](/graph/webhooks-with-resource-data). The subscription creation fails if an [encryptionCertificate](/graph/api/resources/subscription) isn't specified. Before you can create a **chatMessage** subscription, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

> [!NOTE]
>`/teams/getAllMessages` and `/chats/getAllMessages` has [licensing and payment requirements](/graph/teams-licenses).
> `/teams/getAllMessages` and `/chats/getAllMessages` support both `model=A` and `model=B` query parameters.
> If no model is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

### conversationMember

> [!NOTE]
>`/teams/getAllMembers` and `/chats/getAllMembers` has [licensing and payment requirements](/graph/teams-licenses).
> `/teams/getAllMembers` and `/chats/getAllMembers` support both `model=A` and `model=B` query parameters.
> If no model is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

### Example request

The `model` query parameter should be specified in the `resource` property in the request body.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-type: application/json

{
   "changeType": "created",
   "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
   "resource": "chats/getAllMessages?model=A",
   "expirationDateTime":"2016-11-20T18:23:45.9356913Z",
   "clientState": "secretClientValue",
   "latestSupportedTlsVersion": "v1_2"
}
```