---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.referenceDefinition"
	referenceType = "RefGradeLevel"
	code = "TestGrade"
	isDisabled = $false
	sortIndex = 300
	displayName = "New Test Grade Level"
}

New-MgBetaExternalIndustryDataReferenceDefinition -BodyParameter $params

```