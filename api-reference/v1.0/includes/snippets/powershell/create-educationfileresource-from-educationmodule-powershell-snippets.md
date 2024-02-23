---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	resource = @{
		"@odata.type" = "#microsoft.graph.educationFileResource"
		displayName = "csv_file.csv"
	}
}

New-MgEducationClassModuleResource -EducationClassId $educationClassId -EducationModuleId $educationModuleId -BodyParameter $params

```