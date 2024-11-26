---
title: "teamsAsyncOperationType enum type"
description: "Types of teamsAsyncOperation."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: enumPageType
ms.date: 08/19/2024
---

# teamsAsyncOperationType enum type

Namespace: microsoft.graph



Types of [teamsAsyncOperation](teamsasyncoperation.md). Members are added as more async operations are supported. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `teamifyGroup`, `createChannel`, `archiveChannel`, `unarchiveChannel`.

## Members

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
|archiveChannel |Operation to archive a channel.|
|unarchiveChannel |Operation to unarchive a channel.|
