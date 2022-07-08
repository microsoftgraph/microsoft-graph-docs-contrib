---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Categories = @(
		"Professional"
	)
	AllowedAudiences = "organization"
	DisplayName = "API Design"
	Proficiency = "generalProfessional"
	CollaborationTags = @(
		"ableToMentor"
	)
}

# A UPN can also be used as -UserId.
New-MgUserProfileSkill -UserId $userId -BodyParameter $params

```