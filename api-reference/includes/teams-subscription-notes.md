---
author: "MSFTRickyCastaneda"
ms.topic: include
ms.date: 01/25/2021
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions can be specified to include resource data (**includeResourceData** set to `true`). In that case, encryption is required and the subscription creation fails if an **encryptionCertificate** isn't specified for such subscriptions.

Use the `Prefer: include-unknown-enum-members` request header to get the following values in **chatMessage** **messageType** [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `systemEventMessage` for `/teams/{id}/channels/{id}/messages` and `/chats/{id}/messages` resource.

### conversationMember
**conversationMember** subscriptions can be specified to include resource data (**includeResourceData** set to `true`). In that case, encryption is required and the subscription creation fails if an **encryptionCertificate** isn't specified for such subscriptions.

### team, channel, and chat
**team**, **channel**, and **chat** subscriptions can be specified to include resource data (**includeResourceData** set to `true`). In that case, encryption is required and the subscription creation fails if an **encryptionCertificate** isn't specified for such subscriptions.

You can use the **notifyOnUserSpecificProperties** query string parameter when you subscribe to changes in a particular chat or at user level. When you set the query string parameter **notifyOnUserSpecificProperties** to `true` during subscription creation, two types of payloads are sent to the subscriber. One type contains user-specific properties, and the other is sent without them. For more information, see [Get change notifications for chats using Microsoft Graph](/graph/teams-changenotifications-chat).
