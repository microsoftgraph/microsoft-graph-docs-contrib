---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	statisticsOptions = "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits"
}

Invoke-MgEstimateSecurityCaseEdiscoveryCaseSearchStatistics -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```