---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	resource = @{
		"@odata.type" = "#microsoft.graph.educationWordResource"
		displayName = "test_word_file.docx"
	}
}

New-MgBetaEducationClassModuleResource -EducationClassId $educationClassId -EducationModuleId $educationModuleId -BodyParameter $params

```