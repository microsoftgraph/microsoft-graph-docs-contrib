---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	description = "Self help community for golf"
	displayName = "Golf Assist"
	groupTypes = @(
	"Unified"
)
mailEnabled = $true
mailNickname = "golfassist"
securityEnabled = $false
}

Update-MgBetaGroupByUniqueName -BodyParameter $params -UniqueName $uniqueNameId 

```