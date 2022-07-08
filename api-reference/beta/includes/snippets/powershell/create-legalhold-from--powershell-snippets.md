---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	"@odata.type" = "#microsoft.graph.ediscovery.legalHold"
	Description = "String"
	CreatedBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	IsEnabled = "Boolean"
	Status = "String"
	ContentQuery = "String"
	Errors = @(
		"String"
	)
	DisplayName = "String"
}

New-MgComplianceEdiscoveryCaseLegalHold -CaseId $caseId -BodyParameter $params

```