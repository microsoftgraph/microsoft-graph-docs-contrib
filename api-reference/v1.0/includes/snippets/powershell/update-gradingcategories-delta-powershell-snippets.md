---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	"gradingCategories@delta" = @(
		@{
			id = "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e"
			displayName = "Lab Test"
		}
		@{
			"@odata.context" = "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity"
			id = "e2a86277-24f9-4f29-8196-8c83fc69d00d"
			reason = "deleted"
		}
		@{
			displayName = "Lab Practice"
			percentageWeight = 
		}
		@{
			displayName = "Lab Theory"
			percentageWeight = 
		}
	)
}

Update-MgBetaEducationClassAssignmentSetting -EducationClassId $educationClassId -BodyParameter $params

```