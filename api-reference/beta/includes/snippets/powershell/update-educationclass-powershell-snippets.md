---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	description = "History - World History 1"
	displayName = "World History Level 1"
}

Update-MgBetaEducationClass -EducationClassId $educationClassId -BodyParameter $params

```