---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Planner

$params = @{
	assignments = @{
		"fbab97d0-4932-4511-b675-204639209557" = @{
			"@odata.type" = "#microsoft.graph.plannerAssignment"
			orderHint = "N9917 U2883!"
		}
	}
	appliedCategories = @{
		category3 = $true
		category4 = $false
	}
	recurrence = @{
		schedule = @{
			pattern = @{
				type = "daily"
				interval = 3
			}
			patternStartDateTime = [System.DateTime]::Parse("2022-02-22T02:10:33Z")
		}
	}
}

Update-MgPlannerTask -PlannerTaskId $plannerTaskId -BodyParameter $params-If-Match W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=" 


```