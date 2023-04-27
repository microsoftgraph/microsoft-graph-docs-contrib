---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	dueDateTime = [System.DateTime]::Parse("2022-09-16T00:00:00Z")
	displayName = "Reading test 09.14 Beta"
	instructions = @{
		contentType = "text"
		content = "Read chapter 4"
	}
	grading = @{
		"@odata.type" = "#microsoft.graph.educationAssignmentPointsGradeType"
		maxPoints = 
	}
	assignTo = @{
		"@odata.type" = "#microsoft.graph.educationAssignmentClassRecipient"
	}
	status = "draft"
	allowStudentsToAddResourcesToSubmission = $true
}

New-MgEducationClassAssignment -EducationClassId $educationClassId -BodyParameter $params

```