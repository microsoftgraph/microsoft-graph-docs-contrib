---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	dismissReason = "Application is no longer needed."
}

Invoke-MgBetaDismissDirectoryRecommendationImpactedResource -RecommendationId $recommendationId -ImpactedResourceId $impactedResourceId -BodyParameter $params

```