---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	displayName = "Test updated"
}

Update-MgEducationClassAssignmentSettingGradingCategory -EducationClassId $educationClassId -EducationGradingCategoryId $educationGradingCategoryId -BodyParameter $params

```