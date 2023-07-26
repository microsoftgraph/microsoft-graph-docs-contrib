---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	categories = @(
		"Professional"
	)
	allowedAudiences = "organization"
	displayName = "API Design"
	proficiency = "generalProfessional"
	collaborationTags = @(
		"ableToMentor"
	)
}

# A UPN can also be used as -UserId.
New-MgBetaUserProfileSkill -UserId $userId -BodyParameter $params

```