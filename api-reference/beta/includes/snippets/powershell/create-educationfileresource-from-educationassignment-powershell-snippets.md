---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	distributeForStudentWork = $false
	resource = @{
		displayName = "article.pdf"
		"@odata.type" = "#microsoft.graph.educationFileResource"
	}
}

New-MgEducationClassAssignmentResource -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -BodyParameter $params

```