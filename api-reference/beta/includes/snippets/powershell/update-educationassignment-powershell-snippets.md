---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	displayName = "Reading and review test 09.03 #5"
	instructions = @{
		contentType = "text"
		content = "Read chapter 5 and write your review"
	}
	dueDateTime = [System.DateTime]::Parse("2021-09-10T00:00:00Z")
	addedStudentAction = "none"
	languageTag = "pt-BR"
	addToCalendarAction = "studentsAndPublisher"
}

Update-MgBetaEducationClassAssignment -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -BodyParameter $params

```