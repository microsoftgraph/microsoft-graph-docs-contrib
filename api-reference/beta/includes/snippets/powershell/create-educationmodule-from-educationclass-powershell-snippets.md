---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	displayName = "Module 2"
	description = "Description for Module 2"
}

New-MgBetaEducationClassModule -EducationClassId $educationClassId -BodyParameter $params

```