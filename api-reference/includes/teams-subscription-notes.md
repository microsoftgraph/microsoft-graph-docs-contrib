---
author: nkramer
ms.topic: include
ms.date: 01/25/2021
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions with delegated permissions don't support resource data (**includeResourceData** must be `false`), and don't require [encryption](/graph/webhooks-with-resource-data).

**chatMessage** subscriptions with application permissions include resource data, and require [encryption](/graph/webhooks-with-resource-data). The subscription creation fails if an [encryptionCertificate](/graph/api/resources/subscription) isn't specified. Before you can create a **chatMessage** subscription, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

> [!NOTE]
> `/teams/getAllMessages` and `/chats/getAllMessages` are available to users that have the [required licenses](https://aka.ms/teams-changenotification-licenses). In the future, Microsoft may require you or your customers to pay additional fees based on the amount of data accessed through the API.
