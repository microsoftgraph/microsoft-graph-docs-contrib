---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	resource = @{
		displayName = "new pdf file patched.pdf"
	}
}

Update-MgBetaEducationClassModuleResource -EducationClassId $educationClassId -EducationModuleId $educationModuleId -EducationModuleResourceId $educationModuleResourceId -BodyParameter $params

```