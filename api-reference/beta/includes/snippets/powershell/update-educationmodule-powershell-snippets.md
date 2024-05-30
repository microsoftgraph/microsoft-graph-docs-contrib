---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	displayName = "New_Module5 updated"
	description = "updated for description"
}

Update-MgBetaEducationClassModule -EducationClassId $educationClassId -EducationModuleId $educationModuleId -BodyParameter $params

```