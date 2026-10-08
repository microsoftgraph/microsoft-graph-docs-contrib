---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	displayName = "New GradingScheme name"
}

Update-MgEducationClassAssignmentSettingGradingScheme -EducationClassId $educationClassId -EducationGradingSchemeId $educationGradingSchemeId -BodyParameter $params

```