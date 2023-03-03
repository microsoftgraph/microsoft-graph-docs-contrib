---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	DueDateTime = [System.DateTime]::Parse("2022-09-16T00:00:00Z")
	DisplayName = "Reading test 09.14"
	Instructions = @{
		ContentType = "text"
		Content = "Read chapter 4"
	}
	Grading = @{
		"@odata.type" = "#microsoft.graph.educationAssignmentPointsGradeType"
		MaxPoints = 
	}
	AssignTo = @{
		"@odata.type" = "#microsoft.graph.educationAssignmentClassRecipient"
	}
	Status = "draft"
	AllowStudentsToAddResourcesToSubmission = $true
}

New-MgEducationClassAssignment -EducationClassId $educationClassId -BodyParameter $params

```