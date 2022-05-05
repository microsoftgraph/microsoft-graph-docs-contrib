---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	"@odata.type" = "#microsoft.graph.educationPointsOutcome"
	Points = @{
		"@odata.type" = "#microsoft.graph.educationAssignmentPointsGrade"
		Points = 
	}
}

Update-MgEducationClassAssignmentSubmissionOutcome -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -EducationSubmissionId $educationSubmissionId -EducationOutcomeId $educationOutcomeId -BodyParameter $params

```