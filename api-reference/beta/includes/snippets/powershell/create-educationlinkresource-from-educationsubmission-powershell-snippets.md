---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	Resource = @{
		DisplayName = "Wikipedia"
		Link = "https://en.wikipedia.org/wiki/Main_Page"
		"@odata.type" = "#microsoft.graph.educationLinkResource"
	}
}

New-MgEducationClassAssignmentSubmissionResource -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -EducationSubmissionId $educationSubmissionId -BodyParameter $params

```