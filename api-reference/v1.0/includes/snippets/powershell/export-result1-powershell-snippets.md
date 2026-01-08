---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	displayName = "Export 1 - simple PST"
	exportCriteria = "searchHits"
	additionalOptions = "htmlTranscripts, splitSource, includeFolderAndPath, condensePaths, friendlyName"
	exportFormat = "pst"
}

Export-MgSecurityCaseEdiscoveryCaseSearchResult -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```