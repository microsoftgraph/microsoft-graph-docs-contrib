---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	dismissReason = "Recommendations is not relevant for my organization because..."
}

Invoke-MgDismissDirectoryRecommendation -RecommendationId $recommendationId -BodyParameter $params

```