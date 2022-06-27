---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	DisplayName = "Quizzes"
}

New-MgEducationClassAssignmentCategory -EducationClassId $educationClassId -BodyParameter $params

```