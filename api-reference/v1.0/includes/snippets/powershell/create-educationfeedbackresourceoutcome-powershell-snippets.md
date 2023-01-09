---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	"@odata.type" = "#microsoft.graph.educationFeedbackResourceOutcome"
	FeedbackResource = @{
		"@odata.type" = "#microsoft.graph.educationWordResource"
		DisplayName = "Document1.docx"
	}
}

New-MgEducationClassAssignmentSubmissionOutcome -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -EducationSubmissionId $educationSubmissionId -BodyParameter $params

```