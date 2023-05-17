---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	outputName = "Export via API"
	description = "Export for the Contoso investigation"
	exportOptions = "originalFiles,fileInfo,tags"
	exportStructure = "directory"
}

Export-MgSecurityCaseEdiscoveryCaseReviewSet -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -BodyParameter $params

```