---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Categories = @(
		"Sports"
	)
}

Update-MgUserProfileInterest -UserId $userId -PersonInterestId $personInterestId -BodyParameter $params

```