---
author: nkramer
ms.topic: include
ms.date: 01/25/2021
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions with delegated permissions do not support resource data (**includeResourceData** must be `false`), and do not require [encryption](/graph/webhooks-with-resource-data).

**chatMessage** subscriptions with application permissions include resource data, and require [encryption](/graph/webhooks-with-resource-data). Subscription creation will fail if [encryptionCertificate](/graph/api/resources/subscription) is not specified. Before creating a **chatMessage** subscription, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis). 

> **Note:** 
>`/teams/getAllMessages` and `/chats/getAllMessages` has [licensing and payment requirements](https://aka.ms/teams-changenotification-licenses).
> `/teams/getAllMessages` and `/chats/getAllMessages` support both `model=A` and `model=B` query parameters.
> If no model is specified, [evaluation mode](https://aka.ms/teams-changenotification-licenses#evaluation_mode_default_requirements) will be used.

### conversationMember

> **Note:** 
>`/teams/getAllMembers` and `/chats/getAllMembers` has [licensing and payment requirements](https://aka.ms/teams-changenotification-licenses).
> `/teams/getAllMembers` and `/chats/getAllMembers` support both `model=A` and `model=B` query parameters.
> If no model is specified, [evaluation mode](https://aka.ms/teams-changenotification-licenses#evaluation_mode_default_requirements) will be used.
