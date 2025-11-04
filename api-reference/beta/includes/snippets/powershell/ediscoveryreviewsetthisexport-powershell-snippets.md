---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	outputName = "Export via API"
	description = "Export for the Contoso investigation"
	exportOptions = "originalFiles, tags, splitSource, includeFolderAndPath, friendlyName, condensePaths"
	exportStructure = "msg"
}

Export-MgBetaSecurityCaseEdiscoveryCaseReviewSet -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -BodyParameter $params

```