---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Categories = @(
		"Professional"
	)
	Proficiency = "advancedProfessional"
}

# A UPN can also be used as -UserId.
Update-MgUserProfileSkill -UserId $userId -SkillProficiencyId $skillProficiencyId -BodyParameter $params

```