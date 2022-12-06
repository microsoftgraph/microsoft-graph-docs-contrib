---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	OutputName = "Export reviewset query via API"
	Description = "Export for the Contoso investigation 2"
	ExportOptions = "originalFiles,fileInfo,tags"
	ExportStructure = "directory"
}

Export-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId -BodyParameter $params

```