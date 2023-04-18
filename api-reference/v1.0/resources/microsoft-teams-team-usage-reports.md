---
title: "Microsoft Teams team usage reports"
description: "Use the Microsoft Teams team usage reports to get insights into the usage of teams in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "zhiliqiao"
doc_type: conceptualPageType
---

# Microsoft Teams team usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams team usage reports to get insights into the usage of teams in your organization.

## Reports

| Function | CSV return type | Description |
| :--------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| [Get team detail](../api/reportroot-getteamsteamactivitydetail.md) | Stream | Get details about Teams activity by team. The numbers include activities for both licensed and non-licensed users. |
| [Get team counts](../api/reportroot-getteamsteamactivitycounts.md) | Stream | Get the number of team activities across Microsoft Teams. The activity types are related to meetings and messages. |
| [Get team counts](../api/reportroot-getteamsteamcounts.md) | Stream | Get the number of teams by type across Microsoft Teams. |
| [Get distribution team counts](../api/reportroot-getteamsteamactivitydistributioncounts.md) | Stream | Get the number of team activities across Microsoft Teams over a selected period. |
