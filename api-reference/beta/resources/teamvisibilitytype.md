---
title: "Members"
description: "Describes the visibility of a team. "
author: "nkramer"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: enumPageType
---

# teamVisibilityType enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the visibility of a [team](../resources/team.md). 

## Members

| Member | Value| Description |
|:---------------|:--------|:----------|
|private|0|Anyone can see the team but only the owner can add a user to the team.|
|public|1|Anyone can join the team.|
|hiddenMembership|2|Only the administrators (global, company, user, and helpdesk) can view the members of a team.<br>Owner permissions are required to join a team.|

