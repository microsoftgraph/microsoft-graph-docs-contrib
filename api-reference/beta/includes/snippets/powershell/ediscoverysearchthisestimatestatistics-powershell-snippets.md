---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	statisticsOptions = "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits"
}

Invoke-MgBetaEstimateSecurityCaseEdiscoveryCaseSearchStatistics -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```