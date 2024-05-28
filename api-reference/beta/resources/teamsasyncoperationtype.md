---
title: "teamsAsyncOperationType enum type"
description: "Types of teamsAsyncOperation. Members are added here as more async operations are supported."
author: "nkramer"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: enumPageType
---

# teamsAsyncOperationType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Types of [teamsAsyncOperation](teamsasyncoperation.md). Members are added here as more async operations are supported.

## Members
The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `teamifyGroup`, `createChannel`, `createChat`, `archiveChannel`, `unarchiveChannel`.

| Member | Description |
|:---------------|:----------|
|invalid|Invalid value.|
|cloneTeam|Operation to clone a team.|
|archiveTeam|Operation to archive a team.|
|unarchiveTeam|Operation to restore an archived team.|
|createTeam|Operation to create a team from scratch.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |
|teamifyGroup |Operation to create a team from a group. |
|createChannel |Operation to create a channel in a team. |
|createChat|Operation to create a chat from scratch.|
|archiveChannel |Operation to archive a channel.|
|unarchiveChannel |Operation to unarchive a channel.|
