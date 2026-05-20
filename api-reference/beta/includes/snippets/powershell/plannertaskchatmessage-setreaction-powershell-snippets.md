---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Planner

$params = @{
	reactionType = "like"
}

Set-MgBetaPlannerTaskMessageReaction -PlannerTaskId $plannerTaskId -PlannerTaskChatMessageId $plannerTaskChatMessageId -BodyParameter $params

```