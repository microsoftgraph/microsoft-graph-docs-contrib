---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Categories = @(
		"Sports"
	)
	Description = "World's greatest football club"
	DisplayName = "Chelsea FC"
	WebUrl = "https://www.chelseafc.com"
}

New-MgUserProfileInterest -UserId $userId -BodyParameter $params

```