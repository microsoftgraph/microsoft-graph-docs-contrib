---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	description = "History - World History 1"
	displayName = "World History Level 1"
}

Update-MgEducationClass -EducationClassId $educationClassId -BodyParameter $params

```