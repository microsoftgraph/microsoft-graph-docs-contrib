---
title: "Import messages into Microsoft Teams chats and channels using Microsoft Graph"
description: "Use Microsoft Graph to import messages into existing Teams chats or channels during migration."
author: "MehakAgarwal"
ms.localizationpriority: high
ms.subservice: "teams"
ms.date: 03/18/2026
ms.topic: concept-article
---

# Import messages into Microsoft Teams chats and channels using Microsoft Graph

This article describes how to import messages into an existing Microsoft Teams chat or channel during a migration session by using Microsoft Graph. Message import is intended for migration scenarios and requires that the target chat or channel is placed into *migration mode* before you can import content.

## When to use message import

Use message import when you need to:

- Migrate historical messages into an existing Teams chat or channel.
- Preserve the original author attribution (who the message is from).
- Optionally preserve (or set) a historical timestamp for each message.

## Requirements

To use the Teams messaging API to import messages, the following conditions must be met:

- App-only (application) context: The request must be made using application permissions.
- Required permission: The calling app must be granted the `Teamwork.Migrate.All` application permission.
- Migration mode must be enabled on the target:
  - To enable migration mode on a channel, call [channel: startMigration](/graph/api/channel-startmigration).
  - To enable migration mode on a chat, call [chat: startMigration](/graph/api/chat-startmigration).
- Author attribution is required: Set the **from** property to attribute the imported message to a user who belongs to the same tenant as the authenticated application.
- Optional timestamp rules (if you specify **createdDateTime**): You can set a custom timestamp for the imported message, but it must meet the following constraints:
  - The value must be *later than* the **createdDateTime** of the target chat or channel.
  - The value must *not* be in the future.
  - The value must be *unique down to the millisecond* within the target chat or channel. If a message with the same **createdDateTime** exists, the request fails with `409 Conflict`; adjust the value and retry.

> [!NOTE]
> - Only the application that called [startMigration](/graph/api/channel-startmigration) on the target channel or [startMigration](/graph/api/chat-startmigration) on the target chat can import messages into it. No other application can request this API on the channel or chat until the owning application completes the migration by calling [channel: completeMigration](/graph/api/channel-completemigration) or [chat: completeMigration](/graph/api/chat-completemigration).
> - Some imported messages may not be visible in the Teams client until migration is completed by calling [completeMigration](/graph/api/channel-completemigration) on the target channel or [completeMigration](/graph/api/chat-completemigration) on the target chat.

## Troubleshooting

### 409 Conflict when importing a message

The **createdDateTime** must be unique down to the millisecond within the target chat or channel. If a message with the same **createdDateTime** exists, the request fails with `409 Conflict`. Adjust the **createdDateTime** and retry the request.

## Related content

- [Import third-party platform messages to Teams using Microsoft Graph](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).
- [Send a message in a channel](/graph/api/channel-post-messages)
- [Send a message in a chat](/graph/api/chat-post-messages)
- [Send a message in a channel or a chat](/graph/api/chatmessage-post)
- [Send replies to a message in a channel](/graph/api/chatmessage-post-replies)
