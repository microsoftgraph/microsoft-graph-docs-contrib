---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	outputName = "2020-12-06 Contoso investigation export"
	description = "Export for the Contoso investigation"
	exportOptions = "originalFiles,fileInfo,tags"
	exportStructure = "directory"
}

Export-MgBetaComplianceEdiscoveryCaseReviewSet -CaseId $caseId -ReviewSetId $reviewSetId -BodyParameter $params

```