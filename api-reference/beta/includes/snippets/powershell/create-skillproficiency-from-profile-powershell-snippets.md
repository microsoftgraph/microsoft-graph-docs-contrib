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

New-MgUserProfileSkill -UserId $userId -BodyParameter $params

```