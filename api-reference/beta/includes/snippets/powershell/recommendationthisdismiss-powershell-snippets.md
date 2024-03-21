---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	dismissReason = "Recommendations is not relevant for my organization because..."
}

Invoke-MgBetaDismissDirectoryRecommendation -RecommendationId $recommendationId -BodyParameter $params

```