---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Education

$params = @{
	displayName = "New GradingScheme name"
}

Update-MgBetaEducationClassAssignmentSettingGradingScheme -EducationClassId $educationClassId -EducationGradingSchemeId $educationGradingSchemeId -BodyParameter $params

```