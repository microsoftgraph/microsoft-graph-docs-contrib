---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

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

New-MgEducationClassAssignmentSettingGradingScheme -EducationClassId $educationClassId -BodyParameter $params

```