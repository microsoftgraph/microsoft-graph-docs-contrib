---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/education/me/rubrics/{id}"
}

Set-MgBetaEducationClassAssignmentRubricByRef -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -BodyParameter $params

```