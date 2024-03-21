---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	categories = @(
		"Professional"
	)
	proficiency = "advancedProfessional"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfileSkill -UserId $userId -SkillProficiencyId $skillProficiencyId -BodyParameter $params

```