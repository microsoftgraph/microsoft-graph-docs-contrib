---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Export 1 - simple PST"
	exportCriteria = "searchHits"
	additionalOptions = "none"
	exportFormat = "pst"
}

Export-MgBetaSecurityCaseEdiscoveryCaseSearchResult -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```