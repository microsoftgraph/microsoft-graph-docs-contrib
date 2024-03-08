---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	gradingCategories = @(
		@{
			displayName = "Lab"
			percentageWeight = 10
		}
		@{
			displayName = "Homework"
			percentageWeight = 80
		}
		@{
			displayName = "Test"
			percentageWeight = 10
		}
	)
}

Update-MgEducationClassAssignmentSetting -EducationClassId $educationClassId -BodyParameter $params

```