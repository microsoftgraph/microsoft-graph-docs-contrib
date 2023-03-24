---
author: nkramer
ms.topic: include
ms.date: 01/25/2021
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions can be specified to include resource data. If specified to include resource data (**includeResourceData** set to `true`), [encryption](/graph/webhooks-with-resource-data) is required. The subscription creation fails if an [encryptionCertificate](/graph/api/resources/subscription) isn't specified for such subscriptions. Before you can create a **chatMessage** subscription with application permissions, you might need to request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

You must use the `Prefer: include-unknown-enum-members` request header to get the following values in **chatMessage** **messageType** [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `systemEventMessage` for `/teams/{id}/channels/{id}/messages` and `/chats/{id}/messages` resource.

> [!NOTE]
>`/teams/getAllMessages`, `/chats/getAllMessages`, `/me/chats/getAllMessages`, `/users/{id}/chats/getAllMessages`, and `/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` 
> are metered APIs; [payment models and licensing requirements](/graph/teams-licenses) may apply.
> `/teams/getAllMessages` and `/chats/getAllMessages` support both `model=A` and `model=B` payment models,
> `/me/chats/getAllMessages`, `/users/{id}/chats/getAllMessages`, and `/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` support only `model=B`.
> If you don't specify a payment model in your query, the default [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used. 

### conversationMember
**conversationMember** subscriptions can be specified to include resource data. If specified to include resource data (**includeResourceData** set to `true`), [encryption](/graph/webhooks-with-resource-data) is required. The subscription creation fails if an [encryptionCertificate](/graph/api/resources/subscription) isn't specified.

> [!NOTE]
>`/teams/getAllMembers`, `/chats/getAllMembers`, and `/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` are metered APIs; [payment models and licensing requirements](/graph/teams-licenses) may apply.
> `/teams/getAllMembers` and `/chats/getAllMembers` support both `model=A` and `model=B` payment models. `/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` supports only `model=B`.
> If you don't specify a payment model in your query, the default [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used. 

### team, channel, and chat
**team**, **channel**, and **chat** subscriptions can be specified to include resource data. If specified to include resource data (**includeResourceData** set to `true`), [encryption](/graph/webhooks-with-resource-data) is required. The subscription creation fails if an [encryptionCertificate](/graph/api/resources/subscription) isn't specified.

> [!NOTE]
>`/appCatalogs/teamsApps/{id}/installedToChats` has [licensing and payment requirements](/graph/teams-licenses), specifically supporting only `model=B`.
> If no model is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.


#### Request example

Specify the `model` query parameter in the **resource** property in the request body.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
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
