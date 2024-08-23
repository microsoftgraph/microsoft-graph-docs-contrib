---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	displayName = "Module 1"
	description = "Description for Module 1"
}

New-MgEducationClassModule -EducationClassId $educationClassId -BodyParameter $params

```