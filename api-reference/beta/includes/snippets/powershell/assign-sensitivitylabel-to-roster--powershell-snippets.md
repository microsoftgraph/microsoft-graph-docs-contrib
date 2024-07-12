---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Planner

$params = @{
	assignmentMethod = "standard"
	sensitivityLabelId = "7a4d7cc1-f72b-46a3-9831-02680eaf56f9"
}

Set-MgBetaPlannerRosterSensitivityLabel -PlannerRosterId $plannerRosterId -BodyParameter $params

```