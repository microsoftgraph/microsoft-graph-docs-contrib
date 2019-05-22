---
title: "chatMessageImportance resource type"
description: "Represents the importance of an individual chat message within a channel or chat entity."
localization_priority: Normal
author: "RamjotSingh"
ms.prod: "microsoft-teams"
---

# chatMessageImportance resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents importance of an individual [chat message](chatMessage.md) within a [channel](channel.md) or [chat](chat.md) entity.

## Members

| Member | Value | Description                             | Supported     |
| :----- | :---- | :-------------------------------------- | :------------ |
| normal | 0     | Message was sent with normal importance | Supported     |
| high   | 1     | Message was sent with high importance   | Supported     |
| urgent | 2     | Message was sent with urgent importance | Supported     |