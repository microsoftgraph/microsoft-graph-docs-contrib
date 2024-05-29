---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Export 3"
	exportCriteria = "searchHits, partiallyIndexed"
	exportLocation = "responsiveLocations"
	additionalOptions = "none"
}

Export-MgBetaSecurityCaseEdiscoveryCaseSearchReport -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```