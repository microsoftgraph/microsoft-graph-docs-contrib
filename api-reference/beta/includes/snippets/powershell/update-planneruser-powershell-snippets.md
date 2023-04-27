---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Planner

$params = @{
	favoritePlanReferences = @{
		jd8S5gOaFk2S8aWCIAJz42QAAxtD = @{
			"@odata.type" = "#microsoft.graph.plannerFavoritePlanReference"
			orderHint = " !"
			planTitle = "Next Release Discussion"
		}
		"7oTB5aMIAE2rVo-1N-L7RmQAGX2q" = $null
	}
	recentPlanReferences = @{
		jd8S5gOaFk2S8aWCIAJz42QAAxtD = @{
			"@odata.type" = "#microsoft.graph.plannerRecentPlanReference"
			lastAccessedDateTime = "2018-01-02T22:49:46.155Z"
			planTitle = "Next Release Discussion"
		}
	}
}

# A UPN can also be used as -UserId.
Update-MgUserPlanner -UserId $userId -BodyParameter $params-If-Match W/"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=" 


```