---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	displayName = "PassFailScheme"
	grades = @(
		@{
			displayName = "Pass"
			minPercentage = 70
			defaultPercentage = 90
		}
		@{
			displayName = "Fail"
			minPercentage = 0
			defaultPercentage = 50
		}
	)
}

New-MgBetaEducationClassAssignmentSettingGradingScheme -EducationClassId $educationClassId -BodyParameter $params

```