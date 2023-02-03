---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	AllowedAudiences = "organization"
	Client = @{
		Department = "Corporate Marketing"
		WebUrl = "https://www.contoso.com"
	}
}

# A UPN can also be used as -UserId.
Update-MgUserProfileProject -UserId $userId -ProjectParticipationId $projectParticipationId -BodyParameter $params

```