---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	categories = @(
		"Sports"
	)
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfileInterest -UserId $userId -PersonInterestId $personInterestId -BodyParameter $params

```