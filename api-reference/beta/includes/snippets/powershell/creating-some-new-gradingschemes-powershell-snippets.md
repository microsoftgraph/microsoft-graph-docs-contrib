---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	gradingSchemes = @(
		@{
			displayName = "Pass/fail"
			grades = @(
				@{
					displayName = "Pass"
					minPercentage = 60
					defaultPercentage = 100
				}
				@{
					displayName = "Fail"
					minPercentage = 0
					defaultPercentage = 0
				}
			)
		}
		@{
			displayName = "Letters"
			grades = @(
				@{
					displayName = "A"
					minPercentage = 90
				}
				@{
					displayName = "B"
					minPercentage = 80
				}
				@{
					displayName = "C"
					minPercentage = 70
				}
				@{
					displayName = "D"
					minPercentage = 60
				}
				@{
					displayName = "F"
					minPercentage = 0
				}
			)
		}
	)
}

Update-MgBetaEducationClassAssignmentSetting -EducationClassId $educationClassId -BodyParameter $params

```