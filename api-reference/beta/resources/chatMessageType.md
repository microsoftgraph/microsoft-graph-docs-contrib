---
title: "chatMessageType resource type"
description: "Represents type of an individual chat message within a channel or chat entity."
localization_priority: Normal
author: "RamjotSingh"
ms.prod: "microsoft-teams"
---

# chatMessageType resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents type of an individual [chat message](chatMessage.md) within a [channel](channel.md) or [chat](chat.md) entity.

## Members

| Member    | Value | Description                               | Supported     |
| :-------- | :---- | :---------------------------------------- | :------------ |
| message   | 0     | Message type as a text or an HTML message | Supported     |
| chatEvent | 1     | Conversation event                        | Not supported |
| typing    | 2     | Typing indicator                          | Not supported |